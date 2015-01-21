dX = x div t * t
dY = y div t * t

goblin = instance_place(x,y,oGoblin)
if !goblin
{
    goblin = instance_place(dX, dY, oGoblin)
}

if goblin
{
    with(goblin)
    {
        
        part = instance_create(x,y, oParticle)
        part.speed = 0.2
        part.direction = random(360)
        part.color = c_red
        part.alpha = 1
        part.lifetime = 90
        part.friction = 0.1
        instance_destroy()
    }   
    sound_play(soBossHit)
    instance_destroy()
    
}


bull = instance_place(x,y,oBull)
if bull
{
    if bull.stunned
    {
        bull.hp -= 1
        bull.hitTime = 15
        sound_play(soBossHit)
        instance_destroy()
    }
    else
    {
        sound_play(soReflect)
        instance_destroy()
    }
}

if instance_place(x,y,oWall)
{
    instance_destroy()
}

if x > room_width || y > room_height-t || x < 0 || y < 0
{
    instance_destroy()
}

prevdX = dX
prevdY = dY
