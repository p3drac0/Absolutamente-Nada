extends State

@onready var text_label : Label = $"../../PanelContainer/Text"
@onready var arrow : Label = $"../../PanelContainer/Arrow"

func enter(_previous_state_key: String):
    text_label.visible_characters = 0
    $"../../AnimationPlayer".stop()
    arrow.visible = false
    $"../../AudioStreamPlayer".stop()
    
func start_writing():
    
    
    emit_signal("set_next_state", "Writing")
    
