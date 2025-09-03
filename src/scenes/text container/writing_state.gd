extends "res://src/FMS/state.gd"


var time_gap: float = 0.03
var max_visible_lines: int = 2 
var timer:Timer=null
var end :bool=false

func enter(previous_state_name:String):
	end=false
	$"../../Container/Text".visible=true
	$"../../Container/Arrow".visible=false
	$"../../Container/Text".text=""
	$"../../AudioStreamPlayer".play()
	timer = Timer.new()
	timer.wait_time = time_gap
	timer.timeout.connect(_on_timer_timeout)
	add_child(timer)
	timer.start()

func _on_timer_timeout():
	add_character()
	#check if 3rd line reached
	if $"../../Container/Text".get_line_count()>max_visible_lines:
		timer.stop()
		fix_overflow()
		#we need to keep showing the current message
		$"../../AudioStreamPlayer".stop()
		emit_signal("set_next_state","Paused")
		
	elif TextData.script_dict[GameVariables.current_text_id].text.length()<=GameVariables.current_text_character:
		GameVariables.current_text_character=0
		timer.stop()
		$"../../AudioStreamPlayer".stop()
		end=true
		

func add_character():
	$"../../Container/Text".text+=TextData.script_dict[GameVariables.current_text_id].text[GameVariables.current_text_character]
	GameVariables.current_text_character+=1

func fix_overflow():
	var visible_text = $"../../Container/Text".text
	var search_from = visible_text.length() - 2
	var last_space_index = visible_text.rfind(" ", search_from)   
	
	if last_space_index == -1:
		last_space_index = visible_text.length() - 2
	
	$"../../Container/Text".text = visible_text.substr(0, last_space_index + 1)
	
	# 2. Encontrar la posición equivalente en el texto ORIGINAL
	var text_to_find = visible_text.substr(0, last_space_index + 1)
	var original_position = TextData.script_dict[GameVariables.current_text_id].text.find(text_to_find)
	
	# 3. Si se encuentra, asignar la posición correcta en el texto original
	if original_position != -1:
		GameVariables.current_text_character = original_position + text_to_find.length()
	else:
		# Fallback: usar la posición actual menos los caracteres cortados
		GameVariables.current_text_character -= (visible_text.length() - text_to_find.length())

func handle_input(_event: InputEvent) -> void:
	if _event.is_action_pressed("continue"):
		if end:
			if TextData.script_dict[GameVariables.current_text_id].has("choices"):
				emit_signal("set_next_state","Choosing")
			else:
				emit_signal("set_next_state","Finished")
		elif $"../../Container/Text".text.length()>0 : 
			timer.wait_time=0.00001
