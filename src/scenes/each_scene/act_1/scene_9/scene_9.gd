extends SceneMain

const NEXT_SCENE: String = "res://src/scenes/each_scene/act_2/scene_10/scene_10.tscn"
@onready var sfx_player = $Sfx

func start_scene() -> void:
    
    if GameVariables.ring == "ring_1":
        if GameVariables.door_call == "bell":
            photo_path="res://assets/images/scenes/E9a1/"
            sfx_player.stream=load("res://assets/sounds/doorbell.wav")
            
        elif GameVariables.door_call == "door":
            photo_path="res://assets/images/scenes/E9a2/"
            sfx_player.stream=load("res://assets/sounds/knock.wav")
            
    elif GameVariables.ring == "ring_2":
        if GameVariables.door_call == "bell":
            photo_path="res://assets/images/scenes/E9b1/"
            sfx_player.stream=load("res://assets/sounds/doorbell.wav")
            
        elif GameVariables.door_call == "door":
            photo_path="res://assets/images/scenes/E9b2/"
            sfx_player.stream=load("res://assets/sounds/knock.wav")
            
    sfx_player.play()        
    load_photo_batch(photo_path)
    pass


func _on_sfx_finished() -> void:
   get_tree().change_scene_to_file(NEXT_SCENE)
