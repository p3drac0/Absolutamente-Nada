extends Node

var text_dict: Dictionary = {
        0: {
            "text":["¿Por qué, Sam? ¿Por qué no me dejaste abrir la maldita caja? nada de esto tendría que haber pasado..."],
            
            "choices": [
                "[Pick the box]", 
                "[Don't pick the box]"
                ],
            
"answers": [[""],["¿En qué momento me he transformado en un animal? ¿Cómo me he podido dejar llevar así? todo por ese pedazo de madera... este no soy yo... no puedo a dejar que me domine... no puedo perderme a mi mismo... no puedo abrir la caja…"]],
            
            "triggers": ["box","no_box"],
            "actors": ["René", "René"]
            },
            
        1: {
      "text":["Mierda... ¿Qué he hecho? Esto no es el final que quería... todo esta lleno de sangre... Sam..."],
            
            "choices": [
                "[Pick the box]", 
                "[Don't pick the box]"
                ],
            
            "answers": [[""],["¿En qué momento me he transformado en un animal? ¿Cómo me he podido dejar llevar así? todo por ese pedazo de madera... este no soy yo... no puedo a dejar que me domine... no puedo perderme a mi mismo... no puedo abrir la caja…"]],
            
            "triggers": ["box","no_box"],
            "actors": ["René", "René"]
            },
                    2: {
      "text":["Joder...¿Por qué acabo de hacer esto?... respira... Sam, ¿Estás bien Sam?"],
            
            "choices": [
                "[Pick the box]", 
                "[Don't pick the box]"
                ],
            
"answers": [[""],["¿En qué momento me he transformado en un animal? ¿Cómo me he podido dejar llevar así? todo por ese pedazo de madera... este no soy yo... no puedo a dejar que me domine... no puedo perderme a mi mismo... no puedo abrir la caja…"]],
            
            "triggers": ["box","no_box"],
            "actors": ["René", "René"]
            },
        }
