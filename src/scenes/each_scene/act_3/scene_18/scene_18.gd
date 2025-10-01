extends SceneMain

var NEXT_SCENE=load("res://src/scenes/each_scene/act_3/scene_18/scene_18.tscn")
var chosen_text:int=0
func start_scene() -> void:
    match GameVariables.weapon:
        "knife":
            photo_path="res://assets/images/scenes/E17a/"
            chosen_text=0
        "scissors":
            photo_path="res://assets/images/scenes/E17b/"
            chosen_text=1
        "fight":
            photo_path="res://assets/images/scenes/E17c/"
            chosen_text=2
            
    load_photo_batch(photo_path)
    text_box.fms.play_script_text(chosen_text)
    
func _on_triggering(trigger_choice) -> void:
    
    if trigger_choice == "box":
        GameVariables.box=true
        
        
    elif trigger_choice == "no_box":
        GameVariables.box=false
        
        
        
