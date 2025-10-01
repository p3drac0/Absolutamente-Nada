extends SceneMain

const NEXT_SCENE: String = "res://src/scenes/each_scene/act_1/scene_5/scene_5.tscn"

func start_scene() -> void:
    if GameVariables.ring=="ring_1":
        photo_path="res://assets/images/scenes/E4a/"
    else :
        photo_path="res://assets/images/scenes/E4b/"
        
    load_photo_batch(photo_path)
    
    var timer = get_tree().create_timer(2.0) # 3 segundos
    await timer.timeout
    on_timer_timeout()

    

func on_timer_timeout():
    get_tree().change_scene_to_file(NEXT_SCENE)
