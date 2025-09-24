extends StateMachine

@onready var choices_blocked: Array 

signal triggering(trigger_choice: String)

var text: Array 
var all_choices: Array
var all_answers: Array
var all_triggers: Array 

var trigger_choice: String

var text_id: int 
var text_ind: int 
var max_text_ind: int 

func play_script_text():
    
    var text_dict : Dictionary = get_parent().text_dict
    
    #The FMS checks if it is posible to play the script
    if current_state.name == "Empty":
        
        trigger_choice = ""
        
        text =  text_dict[text_id]["text"]
        all_choices = text_dict[text_id]["choices"]
        all_answers = text_dict[text_id]["answers"]
        all_triggers = text_dict[text_id]["triggers"]
        
        choices_blocked = []
        
        text_ind = 0
        max_text_ind = text.size()
        
        current_state.start_writing()
        
    else:
        #in case, it is writing or paused, they will refuse the request and show this warning
        print("Unable to play text because TextContainer is in state: " + current_state.name)
