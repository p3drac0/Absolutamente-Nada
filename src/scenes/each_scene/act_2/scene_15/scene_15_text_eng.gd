extends Node

var text_dict: Dictionary = {
        0: {
            "text":["With every passing second the air grows thicker, and that buzzing, more unbearable.", "Sam says nothing—why doesn’t he say anything… why is he looking at me like that… I feel that if I break this silence there’s no turning back… but I have to...", "I’m suffocating, I need to breathe, I need the buzzing to stop…"],
            
            "choices": [
                "Sam, this is getting way too strange, I’m not comfortable here, I feel like the best thing I can do is leave…", 
                "I can’t take it anymore, my head’s going to explode, Sam, you don’t understand… I need to breathe… I need you to open that fucking box… and if you won’t do it, I will.",
                "I’m sorry, Sam, I don’t want to hurt you, I’m asking you… please… open that box…",
                "Everything that’s happening today is really strange, Sam, and I don’t want to hurt you. I don’t know what’s wrong with you, but I’m pretty sure it has to do with that damn box… open the box, Sam… open the box…"],
            
            "answers": [
                ["Alright… sure… I’d never thought about it…", "About just leaving like that…"],
                ["You want the buzzing to stop too, don’t you?…"],
                ["You’ve never wanted to hurt anyone… and yet here we are again…"],
                ["You think opening it will change something… but it won’t change anything at all…"]
                ],
            
            "triggers": ["final_pasive", "low_agression", "medium_agression", "high_agression"],
            "actors": ["René", "Sam"]
            },
 
        }
