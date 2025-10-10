extends Node

var text_dict: Dictionary = {
        0: {
            "text":["Cada segundo que pasa el aire es más denso, y ese zumbido, mas insoportable.", 
            "Sam no dice nada, ¿Por qué no dice nada? ¿Por qué me mira así? Siento que si rompo este silencio no hay vuelta atrás... pero necesito hacerlo.", "Me estoy ahogando y necesito coger aire, necesito que pare el zumbido..."],
            
            "choices": [
                "Sam esto está siendo demasiado extraño, no estoy cómodo aquí, siento que lo mejor que puedo hacer es irme...", 
                "No puedo más, la cabeza me va a explotar, Sam, no lo entiendes... necesito respirar... necesito que abras esa puta caja... y si no lo haces tú, lo haré yo",
                "Lo siento Sam, no quiero hacerte daño, te pido por favor que abras esa caja...",
                "Todo lo que está pasando hoy es muy extraño, Sam, y no quiero hacerte daño, no sé lo que te pasa, pero estoy bastante seguro de que tiene que ver con esa maldita caja... abre la caja Sam... abre la caja..."],
            
            "answers": [
                ["vale... claro... nunca lo había pensado...", "El irme sin más..."],
                ["Tu también quieres que el zumbido pare... ¿Verdad?"],
                ["Nunca has querido hacer daño... y sin embargo aquí estamos otra vez..."],
                ["Crees que abrirla va a cambiar algo... pero no cambiara nada en absoluto..."]
                ],
            
            "triggers": ["final_pasive", "low_agression", "medium_agression", "high_agression"],
            "actors": ["René", "Sam"]
            },
 
        }
