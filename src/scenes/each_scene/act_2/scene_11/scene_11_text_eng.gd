extends Node

var text_dict: Dictionary = {
        0: {
            "text":[""],
            
            "choices": [
                "So what’s the plan? We can watch a movie", 
                "You really seem somewhere else today, everything okay at work?",
                "Phew, I’ve missed this… how long has it been since we last got together?",
                "[Keep asking about the mystery box]"
                ],
            
            "answers": [
                ["Well, I hadn’t really thought about it…"],
                ["Yeah, yeah, work’s fine… my head hurts a little, but that’s it, I’ve just caught a cold…"],
                ["I don’t really know, but it feels like it was just yesterday…"],
                [""],
                ],
            
            "triggers": ["","","","keep_asking"],
            "actors": ["René", "Sam"]
            },
            
        1: {
            "text":["So"],
            
            "choices": [
                "Sam, you’re really not going to tell me anything about that box? Haha", 
                "If you want to ignore it, fine… but it’s clear you want me to ask about the box…",
                "You’re going to keep playing mysterious until I seriously question what’s in that box, aren’t you?",
            ],
            
            "answers": [
                ["…"],
                ["…"],
                ["…"],
                ],
            
            "triggers": ['to_drink','to_drink','to_drink'],
            "actors": ["René", "Sam"]
            },
        
        2: {
            "text":["Do you want something to drink?"],
            
            "choices": ["Yes, thanks, a glass of water will do.", 
            "I’ve had enough water with that downpour, do you have a soft drink?"],
            
            "answers": [
                [""],
                [""],
                ],
            
            "triggers": ['water','coca'],
            "actors": ["Sam", "René"]
            },
        }
        
