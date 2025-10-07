extends SceneMain

var NEXT_SCENE = load("res://src/scenes/each_scene/act_3/scene_21/scene_21.tscn")

func start_scene() -> void:
    load_photo_batch(photo_path)
    text_box.fms.play_script_text(0)
    
func _on_triggering(trigger_choice) -> void:
        
    if trigger_choice == 'closing':
        get_tree().change_scene_to_packed(NEXT_SCENE)
