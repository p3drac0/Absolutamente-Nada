extends "res://src/FMS/state.gd"

func play_script_text(text_id:int):
	GameVariables.current_text_id=text_id
	$"../../AnimationPlayer".stop()
	$"../../Container/Arrow".visible=false
	emit_signal("set_next_state","Writing")
#func enter(previos_state_name:String):
	#
	#$"../../AnimationPlayer".play("arrow_blink")
