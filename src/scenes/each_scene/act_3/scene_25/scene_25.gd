extends SceneMain

const NEXT_SCENE: String = "res://src/scenes/menu_scene/menu_scene.tscn"

func start_scene() -> void:
    
    if GameVariables.ring == 'ring_1':
        photo_path = "res://assets/images/scenes/E23a/"
        
    elif GameVariables.ring == 'ring_2':
        photo_path = "res://assets/images/scenes/E23b/"
        
    load_photo_batch(photo_path)
    
    if GameVariables.weapon == 'knife':
        text_box.fms.play_script_text(0)
        
    elif GameVariables.weapon == 'scissors':
        text_box.fms.play_script_text(1)
        
    elif GameVariables.weapon == 'fight':
        text_box.fms.play_script_text(2)
    
    

func _on_triggering(trigger_choice) -> void:
    
    if trigger_choice == '0':
        animation_player.play('to_final_monologue')
        text_box.fms.play_script_text(3)
    
    if trigger_choice == 'end_game':
        get_tree().change_scene_to_packed(load(NEXT_SCENE))
        
        
        
