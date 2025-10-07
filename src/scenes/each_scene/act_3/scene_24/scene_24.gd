extends SceneMain

const NEXT_SCENE: String = "res://src/scenes/menu_scene/menu_scene.tscn"

func start_scene() -> void:
    
    load_photo_batch(photo_path)
    text_box.fms.play_script_text(0)

func _on_triggering(trigger_choice) -> void:
    
    if trigger_choice == 'end_game':
        get_tree().change_scene_to_packed(load(NEXT_SCENE))
        
        
