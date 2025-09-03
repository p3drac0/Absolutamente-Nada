extends "res://src/FMS/state_machine.gd"

func play_script_text(script_id:int):
	#The FMS checks if it is posible to play the script
	if current_state.has_method("play_script_text"):
		current_state.play_script_text(script_id)
	else:
		#in case, it is writing or paused, they will refuse the request and show this warning
		print("Unable to play text with id " + str(script_id) + " because TextContainer is in state: " + current_state.name)
