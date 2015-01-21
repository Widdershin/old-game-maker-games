inputWait -= 1
if inputWait <= 0 && !charge
{
    if stunnedPrev = true
    {
        moveDir *= -1
        x -= t * 2 * moveDir
    }
    stunned = false
    y += sign(oPlayer.dY - dY) * t
    if y > 336
    {
        y = 336
    }
    if y < 16
    {
        y = 16
    }
    inputWait = inputDelay
    /*if x >= 304 || x <= 16
    {
        moveDir *= -1
        show_debug_message(test)
        test = 0
    }*/
}

if (oPlayer.dY = dY || oPlayer.dY = dY+t) && !stunned && sign(oPlayer.dX - dX) = moveDir
{   
    chargeChance += 1
    
    rand = irandom(150)+30
    if rand < chargeChance
    {
        //show_message(string(rand) + ", " + string(chargeChance))
        charge = true
        willStun = true
    }
}
else
{
    chargeChance = 0
}

if inputWait <= 0 && charge
{
    if !instance_place(x + (t * moveDir), y, oWall)
    {
        if instance_place(x + (t * moveDir), y, oPlayer)
        {
            willStun = false
            oPlayer.hit += 1
            if oPlayer.dY = dY
            {
                oPlayer.y -= t
            }
            else
            {
                oPlayer.y += t
            }
        }
        goblin = instance_place(x + (t * moveDir), y, oGoblin)
        if goblin
        {
            if goblin.dY = dY
            {
                goblin.y -= t
            }
            else
            {
                goblin.y += t
            }
        }
        x += moveDir * t
    }
    else
    {
        charge = false
        if willStun
        {
            sound_play(soBullHit)
            stunned = true
            inputWait = inputDelay * 12
            stunnedTime = inputDelay * 10
        }
        else
        {
            moveDir *= -1
            x -= t * 2 * moveDir
            inputWait = inputDelay * 7
        }
        
    }
}

if hp = 0
{
    sound_play(soBossKill)
    for (i = 0; i < sprite_width / t; i += 1)
    {
        for(j = 0; j < sprite_height / t; j += 1)
        {
            part = instance_create(x + i * t, y + j * t, oParticle)
            part.speed = 2
            part.direction = point_direction(x + sprite_width/2, y+sprite_height/2, part.x + t/2, part.y + t/2)
            part.color = color
            part.alpha = 1
            part.lifetime = 240
            part.friction = 0.1
        }
    }
    instance_destroy()
}

stunnedPrev = stunned

dX = x div t * t
dY = y div t * t

color = merge_color(defColor, c_red, 1 - (hp / maxHP))

