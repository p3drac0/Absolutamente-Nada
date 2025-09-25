extends Label

func _process(_delta: float) -> void:
    text=$"../FMS".current_state.name
