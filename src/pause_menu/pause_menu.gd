extends Control
class_name PauseMenu

@onready var animation_player: AnimationPlayer = $AnimationPlayer

func start_pause_menu() -> void:
    get_tree().paused = true
    animation_player.play("fade_in")
    

func quit_pause_menu() -> void:
    animation_player.play("fade_out")
    await animation_player.animation_finished 
    get_tree().paused = false
    
func _on_resume_button_pressed() -> void:
    get_tree().paused = false

func _on_save_button_pressed() -> void:
    pass # Replace with function body.


func _on_load_button_pressed() -> void:
    pass # Replace with function body.


func _on_return_button_pressed() -> void:
    pass # Replace with function body.


func _on_quit_button_pressed() -> void:
    pass # Replace with function body.
