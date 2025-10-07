extends SceneMain

var NEXT_SCENE = load("res://src/scenes/each_scene/act_3/scene_23/scene_23.tscn")
func start_scene() -> void:
    
    if GameVariables.ring == 'ring_1':
        if GameVariables.umbrella == true:
            photo_path = "res://assets/images/scenes/E22a1/"
        else:
            photo_path = "res://assets/images/scenes/E22a2/"
    
    elif GameVariables.ring == 'ring_2':
        if GameVariables.umbrella == true:
            photo_path = "res://assets/images/scenes/E22b1/"
        else:
            photo_path = "res://assets/images/scenes/E22b2/"
            
    load_photo_batch(photo_path)
    text_box.fms.play_script_text(GameVariables.at_door_choice)
    
func _on_triggering(trigger_choice) -> void:
        
    if trigger_choice == 'trig':
        get_tree().change_scene_to_packed(NEXT_SCENE)
    
