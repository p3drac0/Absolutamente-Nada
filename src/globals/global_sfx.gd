extends Node

var glitch1:AudioStream=load("res://assets/sounds/glitch1.mp3")
var glitch2:AudioStream=load("res://assets/sounds/glitch2.mp3")
var glitch3:AudioStream=load("res://assets/sounds/glitch3.mp3")
var glitch4:AudioStream=load("res://assets/sounds/glitch4.mp3")
var glitches=[glitch1,glitch2,glitch3,glitch4]    

var volume_levels={
        1:-80,
        2:-30,
        3:-25,
        4:-20,
        5:-15,
        6:-10,
        7:-5,
        8:0,
        9:5,
        10:10
    }

func play_glitch():
    $Glitch.stream=glitches.pick_random()
    $Glitch.play()
    
func set_white_noise_volume(volume:int=1):
    var tween = get_tree().create_tween()
    tween.tween_property(get_node("WhiteNoise"),"volume_db",volume_levels[volume],2)
    
func set_grey_noise_volume(volume:int=1):
    var tween = get_tree().create_tween()
    tween.tween_property(get_node("GrayNoise"),"volume_db",volume_levels[volume],2)
