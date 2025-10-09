extends Node

var text_dict: Dictionary = {
        0: {
            "text":["Hay algo en la forma en la que Sam me mira, en la manera que se mueve y en cómo sostiene esa caja...",
             "Creo que no soy bienvenido aquí, siento como un zumbido de fondo que tensa cada músculo de mi cuerpo... un zumbido que sale de esa puta caja"],
            
            "choices": [
                "[Esperar a Sam]", 
                "[Investigar el aparador]"],
            
            "answers": [
                [""],
                [""],
                ],
            
            "triggers": ["wait", "investigate",],
            "actors": ["René", "René"]
            },
 
        }
