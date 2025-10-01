extends State

const CHOICE_SCENE = preload("res://src/choice/choice.tscn")

@export var spacing_per_choice: float = 30

@onready var text_label : Label = $"../../TextPanel/Text"
@onready var arrow : Label = $"../../TextPanel/Arrow"

@onready var fms: Node = get_parent()
@onready var choices_container: VBoxContainer = $"../../ScrollContainer/Choices"

@onready var choices_text: Array
@onready var answers_text: Array 
@onready var triggers: Array 

var marked_choice: int = 0

func enter(_previous_state_name: String):
    var i : int = 0
    var j : int = 0
    #hide text 
    #$"../../Container/Text".text=""
    #$"../../Container/Text".visible = false
    arrow.visible = false
    
    marked_choice = 0
    choices_container.visible = true
    
    answers_text = []
    choices_text = []
    triggers = []
    
    for choice in fms.all_choices:
        if choice in fms.choices_blocked:
            i += 1
            continue 
            
        var new_choice = CHOICE_SCENE.instantiate()
        
        choices_container.add_child(new_choice)
        
        j += 1
        new_choice.choice_label.text = str(j) + ". " + choice
        
        choices_text.append(choice)
        
        if fms.all_answers.size() != 0:
            answers_text.append(fms.all_answers[i])
            
        triggers.append(fms.all_triggers[i])
        
        i += 1
    
    if choices_container.get_children().size() > 0: 
        choices_container.get_children()[0].select()
        
    else:
        emit_signal("set_next_state", "Finished")
        
    
func handle_input(_event: InputEvent) -> void:
    var choices : Array = choices_container.get_children()
    
    if _event.is_action_pressed("up"):
        if marked_choice == 0:
            pass
            
        else:
            marked_choice -= 1
            
        choices[marked_choice].select()
        
    elif _event.is_action_pressed("down"):
        if marked_choice + 1 > choices.size() - 1:
            pass
            
        else:
            marked_choice += 1
            
        choices[marked_choice].select()
        
    elif _event.is_action_pressed("continue"):
        clean_choices()
        
        fms.choices_blocked.append(choices_text[marked_choice]) 
        
        fms.emit_text_to_add_signal(choices_text[marked_choice], fms.actors[1])
        
        if triggers[marked_choice] != "":
            fms.trigger_choice = triggers[marked_choice]
        
        fms.text_ind = 0
        fms.text = answers_text[marked_choice]
        fms.current_actor = fms.actors[1]
        
        fms.max_text_ind = fms.text.size() - 1
        
        if answers_text[marked_choice][0] == "":
            fms.emit_trigger_signal(fms.trigger_choice)
            
        else :
            emit_signal("set_next_state","Writing")
        
func clean_choices():
    for choice in choices_container.get_children():
        choice.queue_free()
        choices_container.visible = false
