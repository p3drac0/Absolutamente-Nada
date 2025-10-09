extends Node
signal request_play_text

var lang:String='eng'

var agresivity_index: int = 0
var ring: String = 'ring_1'
var umbrella: bool = false
var drink: String = 'water'
var weapon: String = 'knife'
var box: bool = true
var door_call: String = 'knock'
var at_door_choice: int = 0
var keep_investigate: bool = false

var game_save_data: Dictionary = {
    "current_scene" = null,
    "current_state" = null,
    "fms" = null,
    "agresivity_index" = null
}
      
func restart_global_variables():
    
    agresivity_index = 0
    ring = ''
    umbrella = false
    drink = ''
    weapon = ''
    box = false
    door_call = ''
    at_door_choice = 0
    keep_investigate = false
