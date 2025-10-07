extends SceneMain

const NEXT_SCENE: String = "res://src/scenes/each_scene/act_1/scene_9/scene_9.tscn"

func start_scene() -> void:
    load_photo_batch(photo_path)
    text_box.fms.play_script_text(0)
    pass

func _on_triggering(trigger) -> void:
    
    if trigger == "bell":
        GameVariables.call = "bell"
        get_tree().change_scene_to_file(NEXT_SCENE)
        
    elif trigger == "door":
        GameVariables.call = "door"
        get_tree().change_scene_to_file(NEXT_SCENE)
        
  
        

  
        
