extends Control
class_name ConversationLog

@onready var animations: AnimationPlayer = $AnimationPlayer
@onready var conversation_log_label: Label = $ScrollContainer/VBoxContainer/Label
@onready var current_who: String = ""

func enter_conversation_log():
    animations.play("background_in")
    
func exit_conversation_log():
    animations.play("background_out")
    
func add_text(text: String, who: String):
    if who == current_who:
        conversation_log_label.text += " " + text
    else:
        if current_who != "":
            conversation_log_label.text += "\n\n"
        
        conversation_log_label.text += who + " — " + text
    
    current_who = who
