test += 1
inputWait -= 1
if inputWait <= 0
{
    x += moveDir * t
    inputWait = inputDelay
    if x >= 304 || x <= 16
    {
        moveDir *= -1
        show_debug_message(test)
        test = 0
    }
}

shootWait -= 1

if shootWait <= 30
{
    inputWait = 31
}

if shootWait <= 0
{
    //SHOOT SOME BULLETS LAWL
    for(i = 0; i < 20; i += 1)
    {
        bullet = instance_create(x + t*2, y + t*2, oBossBullet)   
        bullet.direction = 180 + (180 / 20) * i
        bullet.speed = 3
        bullet.image_blend = color
    }
    sound_play(soBossShoot)
    inputWait = inputDelay*10
    shootWait = shootDelay + inputWait
}

fireBall= instance_place(x,y,oFireball)
if fireBall
{
    hp -= 1
    hitTime = 15
    sound_play(soBossHit)
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

color = merge_color(c_lime, c_red, 1- (hp / hpMax))

inputDelay = 5 + 5 * (hp/hpMax)
shootDelay = 112.5 + 112.5 * (hp/hpMax)


dX = x div t * t
dY = x div t * t
