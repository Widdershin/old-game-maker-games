switch (active)
{
    case 1: color = c_lime; break;
    case 0: color = c_red; break;
    case -1: color = c_black; break;
    case 2: color = c_yellow; break;
    
}

fireball = instance_place(x, y, oFireball)
if fireball
{
    if active = 0
    {
        oPlayer.hit += 1
        
    }
    if active = 1
    {
        sound_play(soHitTarget)
        active = 2
    }
    sound_play(soReflect)
    with(fireball)
    {
        instance_destroy()
    }
}
