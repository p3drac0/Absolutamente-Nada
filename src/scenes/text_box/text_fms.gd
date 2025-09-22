extends StateMachine

var text : Array 
var choices : Array
var answers : Array

var dict_ind : int 
var text_ind : int 
var max_text_ind : int 

var choices_already_selected : Array 
func play_script_text():
    
    var text_dict : Dictionary = get_parent().text_dict
    
    #The FMS checks if it is posible to play the script
    if current_state.name == "Empty":
        
        dict_ind = 0
        
        text =  text_dict[dict_ind]["text"]
        choices = text_dict[dict_ind]["choices"]
        answers = text_dict[dict_ind]["answers"]
        
        choices_already_selected = []
        
        text_ind = 0
        max_text_ind = text.size()
        
        current_state.start_writing()
        
    else:
        #in case, it is writing or paused, they will refuse the request and show this warning
        print("Unable to play text because TextContainer is in state: " + current_state.name)
