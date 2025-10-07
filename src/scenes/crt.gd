extends CanvasLayer

func scream():
    var tween1 = get_tree().create_tween()
    var tween2 = get_tree().create_tween()
    
    #config del screenshake
    var strength= 40.0
    var duration = 0.02
    var viewport := get_viewport()
    var tween := create_tween()
    var t = duration / 12.0

    
    var initial_noise=$TextureRect.material.get_shader_parameter("static_noise_intensity")
    var initial_aberration=$TextureRect.material.get_shader_parameter("aberration")
    


    GlobalSfx.play_glitch()

    
    for i in range(12):
        var offset = Vector2(randf_range(-strength, strength), randf_range(-strength, strength))
        tween.tween_callback(func(): viewport.canvas_transform.origin = offset).set_delay(t * i)
        
    tween.tween_callback(func(): viewport.canvas_transform.origin = Vector2.ZERO).set_delay(duration)
    tween1.tween_property(get_node("CanvasLayer/TextureRect"),"material:shader_parameter/aberration",1.0,0.05).set_trans([Tween.TRANS_ELASTIC, Tween.TRANS_BACK, Tween.TRANS_BOUNCE, Tween.TRANS_EXPO].pick_random()).set_ease([Tween.EASE_IN, Tween.EASE_OUT, Tween.EASE_IN_OUT].pick_random()) 
    tween1.tween_property(get_node("CanvasLayer/TextureRect"),"material:shader_parameter/aberration",initial_aberration,0.1).set_trans([Tween.TRANS_ELASTIC, Tween.TRANS_BACK, Tween.TRANS_BOUNCE, Tween.TRANS_EXPO].pick_random()).set_ease([Tween.EASE_IN, Tween.EASE_OUT, Tween.EASE_IN_OUT].pick_random())     
    tween1.tween_property(get_node("CanvasLayer/TextureRect"),"material:shader_parameter/aberration",-0.4,0.1).set_trans([Tween.TRANS_ELASTIC, Tween.TRANS_BACK, Tween.TRANS_BOUNCE, Tween.TRANS_EXPO].pick_random()).set_ease([Tween.EASE_IN, Tween.EASE_OUT, Tween.EASE_IN_OUT].pick_random())  
    tween2.tween_property(get_node("CanvasLayer/TextureRect"),"material:shader_parameter/static_noise_intensity",0.5,0.1).set_trans([Tween.TRANS_ELASTIC, Tween.TRANS_BACK, Tween.TRANS_BOUNCE, Tween.TRANS_EXPO].pick_random()).set_ease([Tween.EASE_IN, Tween.EASE_OUT, Tween.EASE_IN_OUT].pick_random())  
    tween2.tween_property(get_node("CanvasLayer/TextureRect"),"material:shader_parameter/static_noise_intensity",0.1,0.05).set_trans([Tween.TRANS_ELASTIC, Tween.TRANS_BACK, Tween.TRANS_BOUNCE, Tween.TRANS_EXPO].pick_random()).set_ease([Tween.EASE_IN, Tween.EASE_OUT, Tween.EASE_IN_OUT].pick_random())  
    tween1.tween_property(get_node("CanvasLayer/TextureRect"),"material:shader_parameter/aberration",1.0,0.05).set_trans([Tween.TRANS_ELASTIC, Tween.TRANS_BACK, Tween.TRANS_BOUNCE, Tween.TRANS_EXPO].pick_random()).set_ease([Tween.EASE_IN, Tween.EASE_OUT, Tween.EASE_IN_OUT].pick_random()) 
    tween1.tween_property(get_node("CanvasLayer/TextureRect"),"material:shader_parameter/aberration",initial_aberration,0.1).set_trans([Tween.TRANS_ELASTIC, Tween.TRANS_BACK, Tween.TRANS_BOUNCE, Tween.TRANS_EXPO].pick_random()).set_ease([Tween.EASE_IN, Tween.EASE_OUT, Tween.EASE_IN_OUT].pick_random())  
    tween2.tween_property(get_node("CanvasLayer/TextureRect"),"material:shader_parameter/static_noise_intensity",0.4,0.1).set_trans([Tween.TRANS_ELASTIC, Tween.TRANS_BACK, Tween.TRANS_BOUNCE, Tween.TRANS_EXPO].pick_random()).set_ease([Tween.EASE_IN, Tween.EASE_OUT, Tween.EASE_IN_OUT].pick_random())  
    tween2.tween_property(get_node("CanvasLayer/TextureRect"),"material:shader_parameter/static_noise_intensity",initial_noise,0.05).set_trans([Tween.TRANS_ELASTIC, Tween.TRANS_BACK, Tween.TRANS_BOUNCE, Tween.TRANS_EXPO].pick_random()).set_ease([Tween.EASE_IN, Tween.EASE_OUT, Tween.EASE_IN_OUT].pick_random()) 
