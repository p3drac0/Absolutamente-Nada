extends Node

var stream_dict = {
    1:load("res://assets/music/loop1.wav")
    
}

func play_music(stream:int):
    $AudioStreamPlayer.stream = stream_dict[stream]
    $AudioStreamPlayer.play()
    pass
