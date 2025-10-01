extends SceneMain

const NEXT_SCENE: String = "res://src/scenes/each_scene/act_1/scene_8/scene_8.tscn"

func start_scene() -> void:
    if GameVariables.umbrella==true:
        #photo_path="res://assets/images/scenes/E4a/"
        pass
    elif GameVariables.umbrella==false:
        #photo_path="res://assets/images/scenes/E4b/"
        pass

    text_box.fms.play_script_text(0)
    
    
    pass

func _on_triggering(trigger) -> void:
    
    if trigger == "0":
        get_tree().change_scene_to_file(NEXT_SCENE)
        
  
        
