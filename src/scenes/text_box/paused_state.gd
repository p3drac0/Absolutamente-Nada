extends State

@onready var fms : Node = get_parent()

func enter(previous_state_name : String):
    $"../../AnimationPlayer".play("arrow_blink")

func handle_input(_event: InputEvent) -> void:
    if _event.is_action_pressed("ui_accept"):
        $"../../AnimationPlayer".stop()
        $"../../Container/Arrow".visible = false
        
        fms.text_ind += 1

        if fms.text_ind < fms.max_text_ind:
            emit_signal("set_next_state", "Writing")
            
        else:
            if fms.trigger_choice != "":
                fms.emit_signal("triggering", fms.trigger_choice)
                fms.trigger_choice = ""
                
            emit_signal("set_next_state", "Choosing")
