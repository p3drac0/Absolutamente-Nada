extends SceneMain

const NEXT_SCENE: String = "res://src/scenes/each_scene/act_1/scene_12/scene_12.tscn"

func start_scene() -> void:
    load_photo_batch(photo_path)
    text_box.fms.play_script_text(0)
    
    
    pass

func _on_triggering(trigger_choice) -> void:
    
    if trigger_choice == 'keep_asking':
        text_box.fms.play_script_text(1)
    
    elif trigger_choice == 'to_drink':
        text_box.fms.play_script_text(2)
        
        
