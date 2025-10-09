extends Node

var text_dict: Dictionary = {
        0: {
            "text":["W-wait?","What's going on ?","Sam, where is Sam?"],
            
            "choices": [],
            
            "answers": [[""]],
            "triggers": [""],
            "actors": ["René", "René"]
            },

        1: {
            "text":["Huh? What?"],
            
            "choices": [
                "[Go open the door]", 
                ],
            
            "answers": [[""]],
            "triggers": ["open the door"],
            "actors": ["René", "René"]
            }
        }
        
