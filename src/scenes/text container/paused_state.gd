extends "res://src/FMS/state.gd"

func enter(previos_state_name:String):
	$"../../AnimationPlayer".play("arrow_blink")

func handle_input(_event: InputEvent) -> void:
	if _event.is_action_pressed("ui_accept"):
		$"../../AnimationPlayer".stop()
		$"../../Container/Arrow".visible=false
		emit_signal("set_next_state","Writing")
