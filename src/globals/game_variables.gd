extends Node
signal request_play_text

var agresivity_index: int
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
      
