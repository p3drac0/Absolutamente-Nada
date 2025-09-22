class_name State
extends Node

"""
This is the state script. The usefulness of this script is that each state 
extends this script, so the states always have these functions defined.
"""

@export var actor = null

## Emitted when the state finishes and wants to transition to another state.
signal set_next_state(next_state_key: String)

## Called by the state machine when receiving unhandled input events.
func handle_input(_event: InputEvent) -> void:
    pass

## Called by the state machine on the engine's main loop tick.
func update(_delta: float) -> void:
    pass

## Called by the state machine on the engine's physics update tick.
func physics_update(_delta: float) -> void:
    pass

## Called by the state machine upon changing the active state.
func enter(_previous_state_key: String) -> void:
    pass

## Called by the state machine before changing the active state. Use this function
## to clean up the state.
func exit() -> void:
    pass

func debugger_warning_stop() -> void:
    # This funcion will be never used. Is only to avoid the warning of the debugger
    # that said "The signal finished is declared but never explicity used in the class"
    set_next_state.emit()
    
