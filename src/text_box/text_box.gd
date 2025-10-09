extends Control



var text_data :Script
@onready var fms : Node = $FMS
@onready var text_label : Label = $TextPanel/Text
@onready var arrow : Label = $TextPanel/Arrow

@onready var text_dict : Dictionary 

func _ready() -> void:
    pass

#Load the text script. main_scene.gd calls this function as ready
func load_text_script(path:String) -> void:
    if ResourceLoader.exists(path): 
        text_data= load(path)  
        text_dict=  text_data.new().text_dict

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
