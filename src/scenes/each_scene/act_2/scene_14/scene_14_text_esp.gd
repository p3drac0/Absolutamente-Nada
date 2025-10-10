extends Node

var text_dict: Dictionary = {
        0: {
            "text":[""],
            
            "choices": [
                "Sam... no me puedo creer que no me vayas a decir que hay ahí dentro", 
                "¿Qué te pasa? Estás actuando raro, no te reconozco. ¡Háblame, Sam!... ¿Qué demonios está pasando aquí?",
                "Tío, ¿Te has metido en algún lío? Dímelo, podemos solucionarlo...",
                "[Coger el cuchillo]",
                "Sam... ya basta juegos... ¿Qué coño hay en la caja?",
                "[Volver al salón]"
                ],
                
            "answers": [
                ["¿De verdad quieres saberlo? No te va a ayudar en nada..."],
                ["Sé exactamente lo mismo que tú..."],
                ["No hay nada que solucionar... Bebe, sé que tienes sed..."],
                [""],
                ["Si te lo dijera no me creerías... por favor, volvamos a la mesa..."],
                [""]
                ],
            
            "triggers": ["", "", "", "knife", "", "leave",],
            "actors": ["René", "Sam"]
            },
 
        }
