extends Node

var text_dict: Dictionary = {
        0: {
            "text":[""],
            
            "choices": [
                "Hola Sam... sí, me empapé por el camino. ¿Me prestas algo para secarme? ... esa caja que llevas... nunca te la había visto. ¿Qué es? ", 
                "Hallo, menos mal que pillé el paraguas, está lloviendo a cántaros, ¡Ala! ¿Y eso que llevas en la mano?",
                "¿Qué tal Sam? Gracias por invitarme y perdona por llegar tarde, es que está lloviendo a mares jajaja… ¡Ala!¡Qué bonita esa caja! ¿Me dejas echarle un vistazo?",
                "Di...disculpa las horas Sam, lo siento muchísimo...y per...perdona, pero esa cajita que tienes... ¿Puedo verla?"
            ],
            
            "answers": [
                ["Nada en absoluto"],
                ["Nada en absoluto"],
                ["Nada en absoluto"],
                ["Nada en absoluto"],
                ["Nada en absoluto"]
                ],
            
            "triggers": ['0','1','2','3','4'],
            "actors": ["René", "Sam"]
            },
            
        1: {
            "text":["Okay"],
            
            "choices": [
                "No timbré porque me acorde de lo pesada que es tu vecina jajaja", 
                "Menos mal que me dijiste de venir, pensaba que no haríamos nada por Samaín",
                "¿Todo bien Sam?, estás muy pálido... ¿Me escuchas?",
                "¿Entonces me dejas pasar? Hace bastante frio por si no te diste cuenta...",
            ],
            
            "answers": [
                ["Ya… alguna vez tuve algún problema con ella...creo..."],
                ["Sí jaja...menos mal..."],
                ["Sí sí, perdona, no sé dónde tengo la cabeza..."],
                ["Eh, sí, disculpa, pasa... "],
                ],
            
            "triggers": ["","","", 'come_in'],
            "actors": ["René", "Sam"]
            },
        }
