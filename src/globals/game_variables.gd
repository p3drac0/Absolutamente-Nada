extends Node
signal request_play_text

var current_text_id : int = -1
var current_text_character : int = 0

func make_choice(text_id:int,choice:int):
    print("You made choice " + str(choice) + " in text with id " + str(text_id))

func play_text(text_id:int):
        emit_signal("request_play_text",text_id)
