extends Node

var text_dict: Dictionary = {
        0: {
            "text":[""],
            
            "choices": [
                "Hola Sam... Sí, me empapé por el camino. ¿Me prestas algo para secarme? ... Esa caja que llevas... nunca te la había visto. ¿Qué es? ", 
                "Hallo, menos mal que pillé el paraguas. Está lloviendo a cántaros. ¡Ala! ¿Y eso que llevas en la mano?",
                "Buenas. Vaya cara de sobado me traes. Bueno, ¿qué tío? ¿Nos quedamos aquí un rato más? ¿Y qué cojones es esa caja tan fea?",
                "¿Qué tal, Sam? Gracias por invitarme y perdona por llegar tarde, es que está lloviendo a mares jajaja… ¡Ala! ¡Qué bonita esa caja! ¿Qué guardas ahí?",
                "Di... disculpa las horas, Sam. Lo siento muchísimo... y per... perdona, pero esa cajita que tienes... ¿Qué tiene dentro?"
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
                "No timbré porque me acordé de lo pesada que es tu vecina jajaja", 
                "Menos mal que me dijiste de venir. Pensaba que no haríamos nada por Samaín",
                "¿Todo bien Sam? Estás muy pálido... ¿Me escuchas?",
                "¿Entonces me dejas pasar? Hace bastante frio por si no te diste cuenta...",
            ],
            
            "answers": [
                ["Ya... alguna vez tuve algún problema con ella... creo..."],
                ["Sí jaja... menos mal..."],
                ["Sí sí, perdona, no sé dónde tengo la cabeza..."],
                ["Eh, sí, disculpa, pasa... "],
                ],
            
            "triggers": ["","","", 'come_in'],
            "actors": ["René", "Sam"]
            },
        }
