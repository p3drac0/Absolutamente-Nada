extends SceneMain

const NEXT_SCENE: String = "res://src/scenes/each_scene/act_1/scene_11/scene_11.tscn"

func start_scene() -> void:
    load_photo_batch(photo_path)
    text_box.fms.play_script_text(0)
    
    
    pass
