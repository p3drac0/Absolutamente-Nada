extends SceneMain

const NEXT_SCENE: String = "res://src/scenes/each_scene/act_1/scene_4/scene_4.tscn"

func start_scene() -> void:
    text_box.fms.play_script_text(0)
    
    pass

func _on_triggering(trigger) -> void:
    
    if trigger == "0":
        text_box.text_label.text = ""
        animation_player.play('photo_in')
        await animation_player.animation_finished
        text_box.fms.play_script_text(1)
    
    elif trigger == "1":
        get_tree().change_scene_to_file(NEXT_SCENE)
