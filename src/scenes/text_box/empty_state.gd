extends State

func enter(_previous_state_key: String):
    $"../../Container/Text".visible_characters = 0
    $"../../AnimationPlayer".stop()
    $"../../Container/Arrow".visible = false
    $"../../AudioStreamPlayer".stop()
    
func start_writing():
    
    
    emit_signal("set_next_state", "Writing")
    
