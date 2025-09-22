extends State

const CHOICE_SCENE = preload("res://src/scenes/choice/choice.tscn")

@onready var fms: Node = get_parent()
@onready var choices_container: VBoxContainer = $"../../Container/Choices"

var marked_choice: int = 0

func enter(previous_state_name: String):
    #hide text 
    $"../../Container/Text".text=""
    $"../../Container/Text".visible = false
    $"../../Container/Arrow".visible = false
    
    choices_container.visible = true

    for choice in fms.choices:
        var new_choice = CHOICE_SCENE.instantiate()
        choices_container.add_child(new_choice)
        
        new_choice.choice_label.text = choice
    
    choices_container.get_children()[0].select()
    
func handle_input(_event: InputEvent) -> void:
    
    if _event.is_action_pressed("up"):
        if marked_choice == 0:
            marked_choice=choices_container.get_children().size() - 1
            
        else:
            marked_choice -= 1
            
        choices_container.get_children()[marked_choice].select()
        
    elif _event.is_action_pressed("down"):
        if marked_choice + 1> choices_container.get_children().size()-1 :
            marked_choice=0
            
        else:
            marked_choice+=1
        choices_container.get_children()[marked_choice].select()
        
    elif _event.is_action_pressed("continue"):
        clean_choices()
        
        fms.choices.remove_at(marked_choice)
        fms.text = fms.answers[marked_choice]
        emit_signal("set_next_state","Finished")
        
    elif _event.is_action_pressed("replay"):
        clean_choices()
        emit_signal("set_next_state","Writing")
        
func clean_choices():
    for choice in choices_container.get_children():
        choice.queue_free()
        choices_container.visible = false
