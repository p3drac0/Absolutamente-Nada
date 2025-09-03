extends Control



func _on_button_pressed() -> void:
	GameVariables.play_text(int($LineEdit.text))
	$Button.release_focus()
