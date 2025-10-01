extends HBoxContainer

@export var selected: bool = false
@onready var choice_label: Label = $ChoiceLabel
@onready var choice_marker: Label = $ChoiceMarker

func select(): 
    
    for choice in get_parent().get_children():
        choice.selected = false
        choice.choice_marker.modulate.a = 0
        
    selected = true
    choice_marker.modulate.a = 255
