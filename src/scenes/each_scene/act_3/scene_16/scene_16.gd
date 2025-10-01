extends SceneMain

var NEXT_SCENE=load("res://src/scenes/each_scene/act_3/scene_17/scene_17.tscn")

func start_scene() -> void:
    match GameVariables.weapon:
        "knife":
            photo_path="res://assets/images/scenes/E16a/"
            $Sfx.stream=load("res://assets/sounds/knife.wav")
            
        "scissors":
            photo_path="res://assets/images/scenes/E16b/"
            $Sfx.stream=load("res://assets/sounds/scissors.wav")
        "fight":
            photo_path="res://assets/images/scenes/E16c/"
            $Sfx.stream=load("res://assets/sounds/fight.wav")
    
    load_photo_batch(photo_path)

func play_kill_sound():
      $Sfx.play()


func _on_sfx_finished() -> void:
   get_tree().change_scene_to_packed(NEXT_SCENE)
