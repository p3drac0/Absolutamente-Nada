extends Control

@onready var label: Label = $Container/Text
@onready var arrow: Label = $Container/Arrow


func _ready() -> void:
	GameVariables.connect("request_play_text",_on_play_text)

func _on_play_text(script_id:int):
	$FMS.play_script_text(script_id)
	
	pass
