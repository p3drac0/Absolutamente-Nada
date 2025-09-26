extends Node
class_name SceneMain

@onready var text_box: Control = $TextBox
@onready var conversation_log: Control = $ConversationLog
@onready var pause_menu: Control = $PauseMenu

func _input(event: InputEvent) -> void:
    
    if event.is_action_pressed("replay"):
        text_box.pause(text_box)
        conversation_log.enter_conversation_log()
        
    if event.is_action_released("replay"):
        if conversation_log.animations.is_playing():
            conversation_log.animations.play_backwards()
            
        else:
            conversation_log.exit_conversation_log()
            
        text_box.resume(text_box)
    
    if event.is_action_pressed("Pause"):
        pause_menu.start_pause_menu()
        
