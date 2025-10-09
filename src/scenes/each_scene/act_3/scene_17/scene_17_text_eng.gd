extends Node

var text_dict: Dictionary = {
        0: {
            "text":["Why, Sam, why didn’t you let me open the damn box… none of this should have happened…"],
            
            "choices": [
                "[Pick the box]", 
                "[Don't pick the box]"
                ],
            
"answers": [[""],["When did I turn into an animal, how could I let myself go like this, all because of that piece of wood… ","this isn’t me… I can’t let it control me… I can’t lose myself… I can’t open the box…"]],
            
            "triggers": ["box","no_box"],
            "actors": ["René", "René"]
            },
            
        1: {
      "text":["Shit… what have I done, this isn’t the ending I wanted… everything’s covered in blood… Sam"],
            
            "choices": [
                "[Pick the box]", 
                "[Don't pick the box]"
                ],
            
            "answers": [[""],["When did I turn into an animal, how could I let myself go like this, all because of that piece of wood… ","this isn’t me… I can’t let it control me… I can’t lose myself… I can’t open the box…"]],
            
            "triggers": ["box","no_box"],
            "actors": ["René", "René"]
            },
                    2: {
      "text":["God… why did I just do that?… please, breathe… Sam, are you okay, Sam?"],
            
            "choices": [
                "[Pick the box]", 
                "[Don't pick the box]"
                ],
            
"answers": [[""],["When did I turn into an animal, how could I let myself go like this, all because of that piece of wood… ","this isn’t me… I can’t let it control me… I can’t lose myself… I can’t open the box…"]],
            
            "triggers": ["box","no_box"],
            "actors": ["René", "René"]
            },
        }
