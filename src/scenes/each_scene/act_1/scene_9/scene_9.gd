extends SceneMain

const NEXT_SCENE: String = "res://src/scenes/each_scene/act_1/scene_9/scene_9.tscn"

func start_scene() -> void:
    
    if GameVariables.ring=="ring_1":
        if GameVariables.call=="bell":
            photo_path="res://assets/images/scenes/E9a1/"
        elif GameVariables.call=="door":
            photo_path="res://assets/images/scenes/E9a2/"
    elif GameVariables.call=="ring_2":
        if GameVariables.call=="bell":
            photo_path="res://assets/images/scenes/E91a2/"
        elif GameVariables.call=="door":
            photo_path="res://assets/images/scenes/E9b2/"
            
    load_photo_batch(photo_path)
    pass

func _on_triggering(trigger) -> void:
    
    if trigger == "bell":
        GameVariables.call="bell"
        get_tree().change_scene_to_file(NEXT_SCENE)
    elif trigger == "door":
        GameVariables.call="door"
        get_tree().change_scene_to_file(NEXT_SCENE)
        
  
        

  
        
