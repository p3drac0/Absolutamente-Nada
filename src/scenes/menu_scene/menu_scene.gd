extends Node2D

var next_scene:PackedScene

func _ready() -> void:
    MusicManager.play_music(1)



func _on_quit_pressed() -> void:
    get_tree().quit() # Replace with function body.


func _on_credits_pressed() -> void:
    next_scene=load("res://src/scenes/credits_scene/credits_scene.tscn")
    $AnimationPlayer.play("fade_out")




func _on_animation_player_animation_finished(anim_name: StringName) -> void:
    if anim_name=="fade_out":
      get_tree().change_scene_to_packed(next_scene)


func _on_play_pressed() -> void:
    next_scene=load("res://src/scenes/each_scene/act_1/scene_1/scene_1.tscn")
    $AnimationPlayer.play("fade_out")
