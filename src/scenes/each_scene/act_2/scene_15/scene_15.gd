extends SceneMain

const NEXT_SCENE_A: String = "res://src/scenes/each_scene/act_2/scene_13a1/scene_13a1.tscn"
const NEXT_SCENE_B: String = "res://src/scenes/each_scene/act_2/scene_15/scene_15.tscn"

func start_scene() -> void:
    
    if GameVariables.ring == 'ring_1':
        if GameVariables.drink == 'water':
            photo_path = "res://assets/images/scenes/E15a/"
        elif GameVariables.drink == 'coca':  
            photo_path = "res://assets/images/scenes/E15c/"
    elif GameVariables.ring == 'ring_2':
        if GameVariables.drink == 'water':
            photo_path = "res://assets/images/scenes/E15b/"
        elif GameVariables.drink == 'coca':  
            photo_path = "res://assets/images/scenes/E15d/"
    
    load_photo_batch(photo_path)
    
    if GameVariables.weapon != 'knife':
        text_box.fms.choices_blocked.append('I can’t take it anymore, my head’s going to explode, Sam, you don’t understand… I need to breathe… I need you to open that fucking box… and if you won’t do it, I will.')
    
    if GameVariables.weapon != 'scissors':
        text_box.fms.choices_blocked.append("I’m sorry, Sam, I don’t want to hurt you, I’m asking you… please… open that box…")
    
    if GameVariables.weapon != 'fight':
        text_box.fms.choices_blocked.append('Everything that’s happening today is really strange, Sam, and I don’t want to hurt you. I don’t know what’s wrong with you, but I’m pretty sure it has to do with that damn box… open the box, Sam… open the box…')
    
    text_box.fms.play_script_text(0)
    
    pass

func _on_triggering(trigger_choice) -> void:
    
    if trigger_choice == 'keep':
        GameVariables.keep_investigate = true
        get_tree().change_scene_to_file(NEXT_SCENE_A)
        
    elif trigger_choice == 'leave':
        get_tree().change_scene_to_file(NEXT_SCENE_B)
        
        
