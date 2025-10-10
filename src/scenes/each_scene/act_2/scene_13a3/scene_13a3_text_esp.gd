extends Node

var text_dict: Dictionary = {
        0: {
            "text":["El Mar, eterno e implacable, la pescadilla que se muerde la cola, agonizando en su propia miseria, sin salida.", 
            " El Sol, ¿habla de nosotros?, ¿De Sam y de mí? Algo no está bien...", 
            "La Muerte... nos mira en silencio, observando, paciente.", 
            "Cada carta habla, una y tras otra, una y otra vez . Y lo que dicen me revuelve el estómago..."],
            
            "choices": [
                "[Seguir investigando el aparador]", 
                "[Volver]"],
            
            "answers": [
                [""],
                [""],
                [""],
                ],
            
            "triggers": ["keep", "leave"],
            "actors": ["René", "René"]
            },
 
        }
