extends SceneMain

#var NEXT_SCENE=load("res://src/scenes/each_scene/act_3/scene_19/scene_19.tscn")
var chosen_text:int=0

func start_scene() -> void:
    load_photo_batch(photo_path)
    text_box.fms.play_script_text(chosen_text)
    
func _on_triggering(trigger_choice) -> void:
    
    if trigger_choice == "box":
        GameVariables.box=true
        
        
    elif trigger_choice == "no_box":
        GameVariables.box=false
        
        
        
