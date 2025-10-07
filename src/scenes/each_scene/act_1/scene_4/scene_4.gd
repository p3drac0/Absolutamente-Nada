extends SceneMain

const NEXT_SCENE: String = "res://src/scenes/each_scene/act_1/scene_5/scene_5.tscn"

func start_scene() -> void:
    if GameVariables.ring=="ring_1":
        photo_path="res://assets/images/scenes/E4a/"
    else :
        photo_path="res://assets/images/scenes/E4b/"
        
    load_photo_batch(photo_path)
    text_box.fms.play_with_no_text()

func _on_triggering(trigger_choice) -> void:
    
    if trigger_choice == 'continue':
        get_tree().change_scene_to_file(NEXT_SCENE)
        
