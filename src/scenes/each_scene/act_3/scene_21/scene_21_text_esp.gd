extends Node

var text_dict: Dictionary = {
        0: {
            "text":["¿Qu...Qué?","¿Qué está pasando?","Sam, ¿Dónde está Sam?"],
            
            "choices": [],
            
            "answers": [[""]],
            "triggers": [""],
            "actors": ["René", "René"]
            },

        1: {
            "text":["Eh...¿Qué?"],
            
            "choices": [
                "[Abrir la puerta]", 
                ],
            
            "answers": [[""]],
            "triggers": ["open the door"],
            "actors": ["René", "René"]
            }
        }
        
