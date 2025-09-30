extends Node2D






func _on_return_pressed() -> void:
    $AnimationPlayer.play("fade_out")




func _on_animation_player_animation_finished(anim_name: StringName) -> void:
    if anim_name=="fade_out":
      get_tree().change_scene_to_file("res://src/scenes/menu_scene/menu_scene.tscn")
