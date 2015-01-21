emitTime -= 1
if emitTime = 0
{
    part = instance_create(x + t/2, y + t/2, oParticle)
    part.color = merge_color(c_white, c_black, random(0.2)+0.4)
    part.sprite_index = sPortal
    part.lifetime = 50
    part.speed = 0.3
    part.alpha = 0.4
    part.direction = random(360)
    emitTime = 2
}

dX = x div t * t
dY = y div t * t
