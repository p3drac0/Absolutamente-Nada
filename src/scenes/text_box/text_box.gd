extends Control

@export_category('Scene text')
@export var text_data : Script 

@onready var fms : Node = $FMS
@onready var text : Label = $Container/Text
@onready var arrow : Label = $Container/Arrow

@onready var text_dict : Dictionary =  text_data.new().text_dict

func _ready() -> void:
    pass
    
