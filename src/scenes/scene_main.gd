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

var text_path:String

func _ready() -> void:
#Shiw scene name for debug purposes    
    $Label.text=get_tree().current_scene.name
#Set the text script automatically by building dynamic path
    text_path=get_tree().current_scene.get_scene_file_path().get_basename()+"_text_"+GameVariables.lang+".gd"
    text_box.load_text_script(text_path)    

    
    #Connect needed signals
    text_box.fms.connect('text_to_add', conversation_log.add_text)
    text_box.fms.connect("triggering", _on_triggering)

    start_scene()

func load_photo_batch(folder_path: String):
    var frames
    

    
    var files := []
    var entries := ResourceLoader.list_directory(folder_path)
    
    if entries.is_empty():
        print("Can't open images folder:", folder_path)
        return files

    for entry in entries:
        if entry.ends_with("/"):
            continue

        if entry.to_lower().ends_with(".png") or entry.to_lower().ends_with(".jpg"):
            files.append(entry)

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
 
func _on_triggering(_trigger_choice) -> void:
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
        
