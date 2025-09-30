extends State

@onready var fms : Node = get_parent()
@onready var text_label : Label = $"../../TextPanel/Text"
@onready var arrow : Label = $"../../TextPanel/Arrow"

func enter(_previous_state_name : String):
    $"../../AnimationPlayer".play("arrow_blink")

func handle_input(_event: InputEvent) -> void:
    if _event.is_action_pressed("ui_accept"):
        $"../../AnimationPlayer".stop()
        arrow.visible = false
        
        if fms.text_ind < fms.max_text_ind:
            fms.text_ind += 1
            emit_signal("set_next_state", "Writing")
            
        else:
            if fms.trigger_choice != "":
                fms.emit_trigger_signal(fms.trigger_choice)
                fms.trigger_choice = ""
            
            elif fms.all_choices.size() == 0:
                fms.emit_trigger_signal(str(fms.text_id))
                
            else:
                emit_signal("set_next_state", "Choosing")
