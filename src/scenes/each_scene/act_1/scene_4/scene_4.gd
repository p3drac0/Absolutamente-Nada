extends SceneMain

const NEXT_SCENE: String = "res://src/scenes/each_scene/act_1/scene_5/scene_5.tscn"

func start_scene() -> void:
    if GameVariables.ring=="ring_1":
        photo_path="res://assets/images/scenes/E4a/"
    elif GameVariables.ring=="ring_2":
        photo_path="res://assets/images/scenes/E4b/"
        
    load_photo_batch(photo_path)
    pass

func _on_triggering(trigger) -> void:
    
    if trigger == "0":
        text_box.text_label.text = ""
        animation_player.play('photo_in')
        await animation_player.animation_finished
        text_box.fms.play_script_text(1)
    
    elif trigger == "1":
        get_tree().change_scene_to_file(NEXT_SCENE)
