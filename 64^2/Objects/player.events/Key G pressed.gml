grenadeid = instance_create(x,y,grenade)
grenadeid.speed = 1
grenadeid.direction = direction
grenadeid.friction = 0.03
sound_pan(throw1,(x/52)-1)
sound_play(throw1)
