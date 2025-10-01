extends SceneMain

const NEXT_SCENE_A: String = "res://src/scenes/each_scene/act_2/scene_13a3/scene_13a3.tscn"
const NEXT_SCENE_B: String = "res://src/scenes/each_scene/act_2/scene_13a1/scene_13a1.tscn"
const NEXT_SCENE_C: String = "res://src/scenes/each_scene/act_2/scene_15/scene_15.tscn"

func start_scene() -> void:
    
    if GameVariables.weapon == 'scissors':
        photo_path = 'res://assets/images/scenes/E13a2/'
    else:
        photo_path = 'res://assets/images/scenes/E13a1/'
    
    if GameVariables.keep_investigate == true:
        text_box.fms.choices_blocked.append("[Look at tarot’s cards]")
        
    load_photo_batch(photo_path)
    text_box.fms.play_script_text(0)
    
    pass

func _on_triggering(trigger_choice) -> void:
    
    if trigger_choice == 'tarot':
        get_tree().change_scene_to_file(NEXT_SCENE_A)
        
    elif trigger_choice == 'scissors':
        GameVariables.weapon = 'scissors'
        get_tree().change_scene_to_file(NEXT_SCENE_B)
        
    elif trigger_choice == 'leave':
        get_tree().change_scene_to_file(NEXT_SCENE_C)
        
        
        
