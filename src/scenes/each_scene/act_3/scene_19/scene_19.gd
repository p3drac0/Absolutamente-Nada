extends SceneMain

var NEXT_SCENE = load("res://src/scenes/each_scene/act_3/scene_20/scene_20.tscn")

func start_scene() -> void:
    
    if GameVariables.ring == 'ring_1':
        photo_path = "res://assets/images/scenes/E19a/"
    if GameVariables.ring == 'ring_2':
        photo_path = "res://assets/images/scenes/E19b/"
        
    load_photo_batch(photo_path)
     
    text_box.fms.play_with_no_text()
    
        
func _on_triggering(trigger_choice) -> void:
    
    if trigger_choice == 'continue':
        animation_player.play('open_box')
        print(animation_player.current_animation)

func play_open_box_sound():
      $Sfx.play()

func _on_sfx_finished() -> void:
   get_tree().change_scene_to_packed(NEXT_SCENE)
