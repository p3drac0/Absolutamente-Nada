extends Node

var text_dict: Dictionary = {
        0: {
            "text":["¿No es verdad, ángel de amor, que en esta apartada orilla,","más rica es la empanadilla y sabe francamente mejor?"],
            "choices":["Santiago","Ramón","Cajal"],
            "answers":[["answ1"],["answ2"],["answ3"]],
            "triggers":[true, false, true],
            "actors":["tu", "yo"]
            },
            
        1: {
            "text":["Ahora esto es la segunda parte del texto, con nuevas opciones","a ver si se consigue que de todo bien, por que si no vaya marrón jeje"],
            "choices":["otro ramon","otro santiago"],
            "answers":[["otro ans1"],["otra ans2"]],
            "triggers":[false, false],
            "actors":["tu", "yo"]
            }
        }
