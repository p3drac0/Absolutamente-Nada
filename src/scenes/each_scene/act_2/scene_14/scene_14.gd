extends SceneMain

const NEXT_SCENE_A: String = "res://src/scenes/each_scene/act_2/scene_14/scene_14.tscn"
const NEXT_SCENE_B: String = "res://src/scenes/each_scene/act_2/scene_15/scene_15.tscn"

func start_scene() -> void:
    
    if GameVariables.weapon == 'knife':
        text_box.fms.choices_blocked.append('[Take knife]')
        photo_path = 'res://assets/images/scenes/E14b/'
    else:
        photo_path = 'res://assets/images/scenes/E14/'
        
    load_photo_batch(photo_path)
    text_box.fms.play_script_text(0)
    
    pass

func _on_triggering(trigger_choice) -> void:
    
    if trigger_choice == 'knife':
        GameVariables.weapon = 'knife'
        get_tree().change_scene_to_file(NEXT_SCENE_A)
        
    elif trigger_choice == 'leave':
        get_tree().change_scene_to_file(NEXT_SCENE_B)
        
        
