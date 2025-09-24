extends SceneMain


func _ready() -> void:
    text_box.fms.play_script_text()
    text_box.fms.choices_blocked.append("Santiago")
    
    text_box.fms.connect("triggering", _on_triggering)
    
    pass

func _on_triggering(trigger_choice) -> void:
    
    print(trigger_choice)
    if trigger_choice == "Cajal":
        text_box.fms.choices_blocked.erase("Santiago")
    
    if trigger_choice == "Santiago":
        
        print('toy')
        text_box.fms.text_id = 1
        text_box.fms.current_state = text_box.fms.get_node("Empty")
        text_box.fms.choices_blocked = []
        text_box.fms.play_script_text()
