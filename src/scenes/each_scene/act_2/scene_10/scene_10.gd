extends SceneMain

const NEXT_SCENE: String = "res://src/scenes/each_scene/act_2/scene_11/scene_11.tscn"


func start_scene() -> void:
    load_photo_batch(photo_path)
    
    if GameVariables.umbrella == true:
        text_box.fms.choices_blocked.append("Hi Sam… yeah, I got soaked on the way. Can you lend me something to dry off… that box you’re carrying, I’ve never seen it before. What is it")
    else:
        text_box.fms.choices_blocked.append("Hello, good thing I grabbed the umbrella, it’s pouring! Whoa, what’s that you’re holding")
        
    text_box.fms.play_script_text(0)
    
    pass
    
func _on_triggering(trigger_choice) -> void:
    
    if trigger_choice == "trig":
        text_box.fms.play_script_text(1)
    
    elif trigger_choice == 'come_in':
        get_tree().change_scene_to_file(NEXT_SCENE)
