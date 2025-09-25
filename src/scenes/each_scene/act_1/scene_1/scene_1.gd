extends SceneMain


func _ready() -> void:
    
    #Connect needed signals
    text_box.fms.connect('text_to_add', conversation_log.add_text)
    text_box.fms.connect("triggering", _on_triggering)
    
    text_box.fms.play_script_text()
    #text_box.fms.choices_blocked.append("Santiago")
    
    pass

func _on_triggering(trigger_choice) -> void:
    
    if trigger_choice == "Cajal":
        #text_box.fms.choices_blocked.erase("Santiago")
        pass
    
    if trigger_choice == "Santiago":
        
        text_box.fms.text_id = 1
        text_box.fms.current_state = text_box.fms.get_node("Empty")
        text_box.fms.choices_blocked = []
        text_box.fms.play_script_text()
