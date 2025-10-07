extends SceneMain

var NEXT_SCENE:PackedScene
var chosen_text:int=0
func start_scene() -> void:
    match GameVariables.weapon:
        "knife":
            photo_path = "res://assets/images/scenes/E17a/"
            chosen_text = 0
        "scissors":
            photo_path = "res://assets/images/scenes/E17b/"
            chosen_text = 1
        "fight":
            photo_path = "res://assets/images/scenes/E17c/"
            chosen_text = 2
            
    load_photo_batch(photo_path)
    text_box.fms.play_script_text(chosen_text)
    
func _on_triggering(trigger_choice) -> void:
    
        
