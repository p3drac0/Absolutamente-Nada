extends Control

@export_category('Scene text')
@export var text_data : Script 

@onready var fms : Node = $FMS
@onready var text_label : Label = $TextPanel/Text
@onready var arrow : Label = $TextPanel/Arrow

@onready var text_dict : Dictionary =  text_data.new().text_dict


func _ready() -> void:
    pass

func pause(node: Node):
    
    for child in node.get_children():
        child.set_process(false)
        if child is Timer:
            child.paused = true
            
        elif child is AnimationPlayer:
            child.playback_active = false
            
        elif child is AudioStreamPlayer:
            child.stop()
        #Recursivity
        pause(child)
        
func resume(node: Node):
    
    for child in node.get_children():
        child.set_process(true)
        
        if child is Timer:
            child.paused = false
            
        elif child is AnimationPlayer:
            child.playback_active = true
            
        elif child is AudioStreamPlayer:
            if fms.current_state.name not in ['Paused','Choosing']:
                child.play()
            
        #Recursivity
        resume(child)
