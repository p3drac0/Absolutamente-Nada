extends State

@onready var text_label : Label = $"../../TextPanel/Text"
@onready var arrow : Label = $"../../TextPanel/Arrow"
@onready var audio_stream : AudioStreamPlayer = $"../../AudioStreamPlayer"
@onready var fms : Node = get_parent() 

@onready var time_gap : float = 0.03
var max_visible_lines : int = 2 
var timer : Timer = null
var end : bool = false

func enter(_previous_state_name : String) -> void:
    
    end = false
    text_label.visible = true
    
    text_label.visible_characters = 0
    
    
    text_label.text = fms.actors[0] + "  — " + fms.text[fms.text_ind]
    
    arrow.visible = false
    audio_stream.play()
    timer = Timer.new()
    
    timer.wait_time = time_gap
    timer.timeout.connect(_on_timer_timeout)
    add_child(timer)
    timer.start()
    
func _on_timer_timeout():
    
    add_character()

    if text_label.visible_characters == text_label.text.length():
        timer.queue_free()
        audio_stream.stop()
        
        fms.emit_text_to_add_signal(fms.text[fms.text_ind], fms.actors[0])
        
        #we need to keep showing the current message
        emit_signal("set_next_state","Paused")

func add_character():
    text_label.visible_characters =  text_label.visible_characters + 1

func handle_input(_event: InputEvent) -> void:
    if _event.is_action_pressed("continue"):
        time_gap = 0.00001
        timer.wait_time = time_gap
        
    if _event.is_action_released("continue"):
        time_gap = 0.03
        timer.wait_time = time_gap
