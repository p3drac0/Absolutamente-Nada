extends Node
class_name SceneMain

@onready var text_box: Control = $CanvasLayer2/TextBox
@onready var conversation_log: Control = $CanvasLayer2/ConversationLog
@onready var pause_menu: Control = $CanvasLayer2/PauseMenu
@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var sfx: AudioStreamPlayer = $Sfx


func _ready() -> void:
    
    #Connect needed signals
    text_box.fms.connect('text_to_add', conversation_log.add_text)
    text_box.fms.connect("triggering", _on_triggering)
    
    start_scene()
    
func start_scene() -> void:
    pass
    
func _on_triggering(trigger_choice) -> void:
    pass
    
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
        
