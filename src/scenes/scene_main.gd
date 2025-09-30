extends Node
class_name SceneMain

@export var fps: float = 4
@export var photo_path: String

@onready var text_box: Control = $CanvasLayer2/TextBox
@onready var conversation_log: Control = $CanvasLayer2/ConversationLog
@onready var pause_menu: Control = $CanvasLayer2/PauseMenu
@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var sfx: AudioStreamPlayer = $Sfx
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

var dir
var file_name 
var files
var tex

func _ready() -> void:
    
    #Connect needed signals
    text_box.fms.connect('text_to_add', conversation_log.add_text)
    text_box.fms.connect("triggering", _on_triggering)
    
    start_scene()

func load_photo_batch(folder_path: String):
    var frames
    
    dir = DirAccess.open(folder_path)
    dir.list_dir_begin()
    file_name = dir.get_next()
    files = []
    
    while file_name != "":
        if file_name.ends_with(".png"):
            files.append(file_name)
        file_name = dir.get_next()
    
    dir.list_dir_end()
    files.sort()
    
    frames = animated_sprite_2d.sprite_frames
    
    if frames.has_animation("default"):
        frames.remove_animation("default")
    frames.add_animation("default")
    
    for i in files.size():
        tex = load(folder_path + files[i])
        frames.add_frame("default", tex)
    
    animated_sprite_2d.sprite_frames = frames
    animated_sprite_2d.animation = "default"
    animated_sprite_2d.play()
    
    animated_sprite_2d.speed_scale = fps
    
func start_scene() -> void:
    pass
 
func _on_triggering(trigger_choice) -> void:
    pass
    
func _input(event: InputEvent) -> void:
    
    if event.is_action_pressed("replay"):
        text_box.pause(text_box)
        conversation_log.enter_conversation_log()
        
    if event.is_action_released("replay"):
        if conversation_log.animations.is_playing():
            conversation_log.animations.play_backwards()
            
        else:
            conversation_log.exit_conversation_log()
            
        text_box.resume(text_box)
    
    if event.is_action_pressed("Pause"):
        pause_menu.start_pause_menu()
        
