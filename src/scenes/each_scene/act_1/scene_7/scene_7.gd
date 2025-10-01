extends SceneMain

const NEXT_SCENE: String = "res://src/scenes/each_scene/act_1/scene_8/scene_8.tscn"
@onready var sfx_player = $Sfx

func start_scene() -> void:
    if GameVariables.umbrella==true:
        sfx_player.stream=load("res://assets/sounds/rainwalk.wav")
        pass
    elif GameVariables.umbrella==false:
        sfx_player.stream=load("res://assets/sounds/rainrun.wav")
        pass
    sfx_player.play()
    text_box.fms.play_script_text(0)
    
    
    pass

func _on_triggering(trigger) -> void:
    
    if trigger == "0":
        get_tree().change_scene_to_file(NEXT_SCENE)
        
  
        
