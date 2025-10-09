extends Node2D

func _on_esp_pressed() -> void:
    GameVariables.lang='esp'
    visible = false
    

func _on_eng_pressed() -> void:
    GameVariables.lang = 'eng'
    visible = false
