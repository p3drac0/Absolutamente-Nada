extends SceneMain

const NEXT_SCENE: String = "res://src/scenes/each_scene/act_1/scene_4/scene_4.tscn"

func start_scene() -> void:
    load_photo_batch(photo_path)
    text_box.fms.play_script_text(0)
    
    
    pass

func _on_triggering(trigger) -> void:
    

    if trigger == "ring_1":
        GameVariables.ring = "ring_1"
        get_tree().change_scene_to_file(NEXT_SCENE)
        
    elif trigger == "ring_2":
        GameVariables.ring = "ring_2"
        get_tree().change_scene_to_file(NEXT_SCENE)
        
