extends Node

var text_dict: Dictionary = {
        0: {
            "text":["..."],
            
            "choices": [
                "Hi Sam… yeah, I got soaked on the way. Can you lend me something to dry off… that box you’re carrying, I’ve never seen it before. What is it?", 
                "Hello, good thing I grabbed the umbrella, it’s pouring! Whoa, what’s that you’re holding",
                "Hey, you look wrecked. So, what’s up, dude? Are we hanging out here a bit longer? And what the hell is that ugly box",
                "What’s up, Sam? Thanks for inviting me, and sorry for being late, it’s raining cats and dogs haha… Wow, that’s a beautiful box! What’s inside?",
                "S…sorry for showing up so late, Sam… I really didn’t mean to… and, um… that little box you’ve got, is there anything in it"
            ],
            
            "answers": [
                ["Nothing at all"],
                ["Nothing at all"],
                ["Nothing at all"],
                ["Nothing at all"],
                ["Nothing at all"]
                ],
            
            "triggers": ['trig','trig','trig','trig','trig'],
            "actors": ["René", "Sam"]
            },
            
        1: {
            "text":["Okay..."],
            
            "choices": [
                "I didn’t ring the bell because I remembered how annoying your neighbor is hahaha.", 
                "Good thing you told me to come, I thought we weren’t going to do anything for Samhain",
                "Are you okay, Sam? You look really pale… can you hear me?",
                "So… can I come in? It’s pretty cold out here, in case you didn’t notice…",
            ],
            
            "answers": [
                ["Yeah… I’ve had some trouble with her before… I guess…"],
                ["Yeah haha… thank godness…”"],
                ["Yeah, yeah, sorry… I don’t know where my head’s at…"],
                ["Oh, yes, sorry… come in…"],
                ],
            
            "triggers": [null, null, null, 'come_in'],
            "actors": ["René", "Sam"]
            },
        }
