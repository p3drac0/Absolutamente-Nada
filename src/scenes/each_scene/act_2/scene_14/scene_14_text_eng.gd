extends Node

var text_dict: Dictionary = {
        0: {
            "text":[""],
            
            "choices": [
                "Sam… I can’t believe you’re not going to tell me what’s in there.", 
                "What’s wrong with you? You’re acting weird, I don’t recognize you. Talk to me, Sam! …what the hell is going on here?",
                "Dude, are you in some kind of trouble? Tell me, we can fix it…",
                "[Take knife]",
                "Sam… enough with the games… what’s in the box?",
                "[Return to the living room]"
                ],
                
            "answers": [
                ["Do you really want to know? It’s not going to help you at all…"],
                ["I know exactly the same as you do…"],
                ["There’s nothing to fix… Drink… I know you’re thirsty…"],
                [""],
                ["If I told you, you wouldn’t believe me…", "please, let’s go back to the table…"],
                [""]
                ],
            
            "triggers": ["", "", "", "knife", "", "leave",],
            "actors": ["René", "Sam"]
            },
 
        }
