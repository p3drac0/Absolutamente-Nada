extends Node

var text_dict: Dictionary = {
        0: {
            "text":["..."],
            
            "choices": [
                "[Follow him.]", 
                "[Stay.]",
                "Stop acting like a weirdo, we’re not in high school anymore…",
                "For God’s sake, Sam… are you taking the box? You really don’t trust me?"
                ],
            
            "answers": [
                [""],
                [""],
                ["..."],
                ["..."],
                ],
            
            "triggers": ["follow", "stay","",""],
            "actors": ["René", "Sam"]
            },
            
        1: {
            "text":["So..."],
            
            "choices": [
                "Sam, you’re really not going to tell me anything about that box? Haha", 
                "If you want to ignore it, fine… but it’s clear you want me to ask about the box…",
                "You’re going to keep playing mysterious until I seriously question what’s in that box, aren’t you?",
            ],
            
            "answers": [
                ["…", "Do you want something to drink?"],
                ["…", "Do you want something to drink?"],
                ["…", "Do you want something to drink?"],
                ],
            
            "triggers": ['to_drink','to_drink','to_drink'],
            "actors": ["Sam", "René"]
            },
        }
