class_name StateMachine
extends Node

@export var current_state : State 
@export var actor: Node

var states_dict : Dictionary = {}

func _ready() -> void:
	# Initialize states_dict with the name of each state child node.
	
	# We initialize the actor node because we need @onready variables of the actor
	# this is weird, i don't know why we need to initialize the actor node here
	actor._ready()

	# We show a label with the current state of the actor
	
	for state in self.get_children():

		# Check if the child node is a State instance () (this avoid bugs).
		if state is State:
			
			states_dict[state.name] = state
			state.actor=actor

			# States have a signal called "finished". Here we connect it to the
			# "_on_state_finished" method of the state machine.
			state.set_next_state.connect(_on_state_finished)

		else:
			print(state)
			print("Warning: Child node is not a State instance.")
	
	current_state.enter('null')
	
func _process(delta):
	
	current_state.update(delta)
		
func _physics_process(delta):
	current_state.physics_update(delta)

func _unhandled_input(event: InputEvent) -> void:
	current_state.handle_input(event)


func _on_state_finished(next_state_name: String) -> void:
	# This method is called when a state finishes and wants to transition to another state.

	# Check if the next state exists in the states_dict.
	if states_dict.has(next_state_name):

		# Get the next state from the states_dict.
		var next_state = states_dict[next_state_name]

		# Call the exit method of the current state.
		current_state.exit()

		# Call the enter method of the next state.
		next_state.enter(current_state.name)
		# Set the next state as the current state.
		current_state = next_state
		
	else:
		print(next_state_name)
		print("Warning: Next state does not exist in the states_dict.")
