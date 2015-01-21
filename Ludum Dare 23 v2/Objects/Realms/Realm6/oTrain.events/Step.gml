inputWait -= 1

if inputWait <= 0
{
    if (x = 0 && y = 0) || (x = t*21 && y = 0) || (x = t*21 && y = t*21) || (x = 0 && y = t*21)
    {
        moveDir += rotDir
    }
    if moveDir > 3
    {
        moveDir -= 4
    }
    
    switch(moveDir)
    {
        case 0: x += t; break;
        case 1: y += t; break;
        case 2: x -= t; break;
        case 3: y -= t; break;
    }
    
    inputWait = inputDelay   
}

shootWait -= 1

if shootWait <= 0
{
    bullet = instance_create(x + sprite_width / 2, y + sprite_height / 2, oBossBullet)
    bullet.speed = 4
    bullet.direction = point_direction(x + sprite_width / 2, y + sprite_height / 2, oPlayer.x, oPlayer.y)
    sound_play(soBossShoot)
    shootWait = s + random(s)
}

fireBall = instance_place(x, y, oFireball)
if fireBall
{
    sound_play(soBossHit)
    hp -= 1
    hitTime = 15
    with (fireBall)
    {
        instance_destroy()
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
