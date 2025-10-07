extends SceneMain

var NEXT_SCENE = load("res://src/scenes/each_scene/act_3/scene_22/scene_22.tscn")
var door_called: bool = false

func start_scene() -> void:
    load_photo_batch(photo_path)
    $Sfx.play()
    
    var timer = get_tree().create_timer(1.0) # 3 segundos
    await timer.timeout
    text_box.fms.play_script_text(0)
    
func _on_triggering(trigger_choice) -> void:
        
    if trigger_choice == '0':
        if GameVariables.door_call == 'door':
            $Sfx.stream = load("res://assets/sounds/knock.wav")
            
        elif GameVariables.door_call == 'bell':
            $Sfx.stream = load("res://assets/sounds/doorbell.wav")
        
        $Sfx.play()
        door_called = true 
        
    elif trigger_choice == 'open the door':
        get_tree().change_scene_to_packed(NEXT_SCENE)
        


func _on_sfx_finished() -> void:
    if door_called == true:
        text_box.fms.play_script_text(1)
