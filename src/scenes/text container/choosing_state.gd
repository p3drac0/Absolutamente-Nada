extends "res://src/FMS/state.gd"

var marked_choice:int = 0

func enter(previous_state_name:String):
	#hide text 
	$"../../Container/Text".text=""
	$"../../Container/Text".visible=false
	$"../../Container/Arrow".visible=false
	
	$"../../Container/Choices".visible=true

	for choice in TextData.script_dict[GameVariables.current_text_id].choices:
		var new_choice = load("res://src/scenes/choice/choice.tscn").instantiate()
		new_choice.get_node("Text/ChoiceLabel").text=choice
		$"../../Container/Choices".add_child(new_choice)
	$"../../Container/Choices".get_children()[0].select()
	
func handle_input(_event: InputEvent) -> void:
	if _event.is_action_pressed("up"):
		if marked_choice==0:
			marked_choice=$"../../Container/Choices".get_children().size()-1
		else:
			marked_choice-=1
		$"../../Container/Choices".get_children()[marked_choice].select()
	elif _event.is_action_pressed("down"):
		if marked_choice + 1> $"../../Container/Choices".get_children().size()-1 :
			marked_choice=0
		else:
			marked_choice+=1
		$"../../Container/Choices".get_children()[marked_choice].select()
	elif _event.is_action_pressed("continue"):
		clean_choices()
		GameVariables.make_choice(GameVariables.current_text_id,marked_choice)
		emit_signal("set_next_state","Finished")
	elif _event.is_action_pressed("replay"):
		clean_choices()
		emit_signal("set_next_state","Writing")
		
		
		
func clean_choices():
	for choice in $"../../Container/Choices".get_children():
		choice.queue_free()
		$"../../Container/Choices".visible=false
