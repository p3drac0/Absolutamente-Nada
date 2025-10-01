extends Node
signal request_play_text

var agresivity_index: int
var ring: String 
var umbrella:bool  
var call:String
var weapon:String="knife"
var box:bool=true

var game_save_data: Dictionary = {
    "current_scene" = null,
    "current_state" = null,
    "fms" = null,
    "agresivity_index" = null
}
      
