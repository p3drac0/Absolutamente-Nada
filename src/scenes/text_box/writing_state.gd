extends State

@onready var text_label : Label = $"../../Container/Text"
@onready var arrow : Label = $"../../Container/Arrow"
@onready var audio_stream : AudioStreamPlayer = $"../../AudioStreamPlayer"
@onready var fms : Node = get_parent() 

var time_gap : float = 0.03
var max_visible_lines : int = 2 
var timer : Timer = null
var end : bool = false

func enter(previous_state_name : String) -> void:
    
    end = false
    
    text_label.visible_characters = 0
    text_label.text = fms.text[fms.text_ind]
    
    arrow.visible = false
    audio_stream.play()
    timer = Timer.new()
    
    timer.wait_time = time_gap
    timer.timeout.connect(_on_timer_timeout)
    add_child(timer)
    timer.start()
    
func _on_timer_timeout():
    
    add_character()

    #check if 3rd line reached
    if text_label.visible_characters == text_label.text.length():
        timer.stop()
        #we need to keep showing the current message
        audio_stream.stop()
        emit_signal("set_next_state","Paused")

func add_character():
    text_label.visible_characters =  text_label.visible_characters + 1

func handle_input(_event: InputEvent) -> void:
    if _event.is_action_pressed("continue"):
        timer.wait_time = 0.00001
    if _event.is_action_released("continue"):
        timer.wait_time = time_gap
