if fireable
{
bulletid = instance_create(x,y,bullet)
bulletid.direction = player.direction
bulletid.speed = 1
fireable = -15
//sound_pan(shoot1,(x/52)-1)
sound_play(shoot1)
}
