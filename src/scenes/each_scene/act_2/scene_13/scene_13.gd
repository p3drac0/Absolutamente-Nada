extends SceneMain

const NEXT_SCENE_A: String = "res://src/scenes/each_scene/act_2/scene_13a/scene_13a.tscn"
const NEXT_SCENE_B: String = "res://src/scenes/each_scene/act_2/scene_14/scene_14.tscn"

func start_scene() -> void:
    load_photo_batch(photo_path)
    text_box.fms.play_script_text(0)
    
    pass

func _on_triggering(trigger_choice) -> void:
    
    if trigger_choice == 'stay':
        text_box.fms.play_script_text(1)
        
