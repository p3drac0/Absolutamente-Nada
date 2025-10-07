extends SceneMain

var NEXT_SCENE = load("res://src/scenes/each_scene/act_3/scene_19/scene_19.tscn")

func start_scene() -> void:
    load_photo_batch(photo_path)
    text_box.fms.play_script_text(0)
    
func _on_triggering(trigger_choice) -> void:
        
    if trigger_choice == 'opening':
        animation_player.play('open_box')
        
        
func play_open_box_sound():
      $Sfx.play()

func _on_sfx_finished() -> void:
   get_tree().change_scene_to_packed(NEXT_SCENE)
