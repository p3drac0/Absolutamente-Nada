extends Node

var text_dict: Dictionary = {
        0: {
            "text":[""],
            
            "choices": [
                "¿Cuál es el plan? podríamos ver una película", 
                "De verdad que hoy parece que estas en otro lado ¿Todo bien en el curro?",
                "Pufff, echaba de menos esto, ¿Hace cuánto que no nos juntábamos?",
                "[Seguir preguntando sobre la caja]"
                ],
            
            "answers": [
                ["Pues no lo había pensado la verdad..."],
                ["Sí sí, todo bien en el curro... me duele un poco la cabeza, pero sin más, habré pillado un resfriado..."],
                ["No lo se la verdad, pero me da la sensación de que ha sido ayer..."],
                [""],
                ],
            
            "triggers": ["","","","keep_asking"],
            "actors": ["René", "Sam"]
            },
            
        1: {
            "text":["So"],
            
            "choices": [
                "Venga Sam ¿De verdad no vas a decirme nada de esa caja? Jajaja", 
                "Si quieres ignorarlo vale, pero claramente quieres que te pregunte por la caja...",
                "Vas a seguir haciéndote el misterioso hasta que te pregunte en serio que hay en esa caja ¿Verdad?",
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
            "text":["... ¿Quieres tomar algo?"],
            
            "choices": ["Si gracias, con un vaso de agua me conformo", 
            "Ya he tenido suficiente agua con ese chaparrón, ¿Tienes un refresco?"],
            
            "answers": [
                [""],
                [""],
                ],
            
            "triggers": ['water','coca'],
            "actors": ["Sam", "René"]
            },
        }
        
