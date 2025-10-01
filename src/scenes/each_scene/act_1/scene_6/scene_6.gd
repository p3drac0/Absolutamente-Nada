extends SceneMain

const NEXT_SCENE: String = "res://src/scenes/each_scene/act_1/scene_7/scene_7.tscn"

func start_scene() -> void:
    load_photo_batch(photo_path)
    text_box.fms.play_script_text(0)
    
    
    pass

func _on_triggering(trigger) -> void:
    
    if trigger == "0":
        get_tree().change_scene_to_file(NEXT_SCENE)
        
  
        
