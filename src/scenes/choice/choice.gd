extends HBoxContainer

@export var selected:bool=false

func select(): 
	for choice in get_parent().get_children():
		choice.selected = false
		choice.get_node("Marker/ChoiceMarker").visible=false
	selected=true
	$Marker/ChoiceMarker.visible=true
	
	
