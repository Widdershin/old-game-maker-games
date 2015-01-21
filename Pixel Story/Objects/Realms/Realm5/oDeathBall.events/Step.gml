shootWait -= 1

playerSight = !collision_line(x + sprite_width/2, y + sprite_height/2, oPlayer.x + t/2, oPlayer.y + t/2, oWall, 1, 0)

if shootWait <= 0
{
    if shootCount < 5 && playerSight
    {
        repeat(5)
        {
            bullet = instance_create(x + sprite_width/2, y + sprite_height / 2, oBossBullet)
            spread = random(30) - 30 / 2
            bullet.direction = point_direction(x + sprite_width/2, y + sprite_height/2, oPlayer.x + t/2, oPlayer.y + t/2) + spread
            bullet.speed = 4
            bullet.image_blend = color
        }
        shootCount += 1
        sound_play(soBossShoot)
        shootWait = shootDelay
    }
    if shootCount = 5
    {    
        bullet = instance_create(x + sprite_width/2, y + sprite_height / 2, oBossBullet)
        spread = random(30) - 30 / 2
        bullet.direction = point_direction(x + sprite_width/2, y + sprite_height/2, oPlayer.x + t/2, oPlayer.y + t/2) + spread
        bullet.speed = 4
        bullet.image_blend = color
        sound_play(soBossShoot )
        if shootWait <= -(s * 10)
        {
            shootCount = 0
            shootWait = shootDelay
        }
    }
}


fireBall = instance_place(x,y, oFireball)
if fireBall
{
    hp -= 1
    sound_play(soBossHit)
    hitTime = 15
    with(fireBall)
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


/*
if (shootWait <= 0 || shooting) && playerSight
{
    if shootCount < 5
    {
        repeat(5)
        {
            bullet = instance_create(x + sprite_width/2, y + sprite_height / 2, oBossBullet)
            spread = random(30) - 30 / 2
            bullet.direction = point_direction(x + sprite_width/2, y + sprite_height/2, oPlayer.x + t/2, oPlayer.y + t/2) + spread
            bullet.speed = 4
            bullet.image_blend = color
        }
        shootCount += 1
        sound_play(soBossShoot)
    }
    else if shootCount = 5
    {
        shootWait = s * 10
        shooting = true
    }
    else if shootCount > 5
    {
        if shootWait = 0
        {
            shooting = false
            shootCount = 0
        }
        bullet = instance_create(x + sprite_width/2, y + sprite_height / 2, oBossBullet)
        spread = random(30) - 30 / 2
        bullet.direction = point_direction(x + sprite_width/2, y + sprite_height/2, oPlayer.x + t/2, oPlayer.y + t/2) + spread
        bullet.speed = 4
        bullet.image_blend = color
    }
}

