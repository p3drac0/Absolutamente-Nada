extends SceneMain

var NEXT_SCENE = load("res://src/scenes/menu_scene/menu_scene.tscn")

func start_scene() -> void:
    load_photo_batch(photo_path)
    text_box.fms.play_script_text(GameVariables.at_door_choice)
    
func _on_triggering(trigger_choice) -> void:
        
    if trigger_choice == 'trig':
        get_tree().change_scene_to_packed(NEXT_SCENE)
    
