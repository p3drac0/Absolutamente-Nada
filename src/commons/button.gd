extends Button



    

func _on_mouse_entered() -> void:
    for child in get_children():
        child.modulate=Color(0.706, 0.522, 0.055, 1.0)

func _on_mouse_exited() -> void:
    for child in get_children():
        child.modulate=Color(1.0, 1.0, 1.0)
