extends Label

func _process(delta: float) -> void:
	text=$"../FMS".current_state.name
