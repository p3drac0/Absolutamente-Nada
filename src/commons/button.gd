extends Button


@onready var label = get_node("Label")
    

func _on_mouse_entered() -> void:
    label.modulate=Color(0.706, 0.522, 0.055, 1.0)

func _on_mouse_exited() -> void:
    label.modulate=Color(1.0, 1.0, 1.0)
