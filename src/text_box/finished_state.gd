extends State

#func play_script_text(text_id:int):
    #$"../../AnimationPlayer".stop()
    #$"../../Container/Arrow".visible = false
    #
    #emit_signal("set_next_state","Writing")
    
func enter(_previous_state_name:String):
    
    $"../../AnimationPlayer".play("arrow_blink")
