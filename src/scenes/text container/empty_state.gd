extends "res://src/FMS/state.gd"

func enter(_previous_state_key: String):
	$"../../AnimationPlayer".stop()
	$"../../Container/Text".text = ""
	$"../../Container/Arrow".visible=false
	$"../../AudioStreamPlayer".stop()
	
func play_script_text(text_id:int):
	GameVariables.current_text_id=text_id
	emit_signal("set_next_state","Writing")
	
