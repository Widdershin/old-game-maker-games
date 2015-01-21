if !pause
{
    
    if floor(walltimed) = 0
    {
        instance_create(0,-32,oWall)
        instance_create(room_width-32,-32,oWall)
        walltimed = walltime
        score += 1
        rand2 = irandom(32/rate)*100
    }
    walltimed -= 1
    
    if enemytimer > rand2
    {
        offset = highest.y mod 32
        inst = choose(oRocketLauncher,oLaserLine)
        randx = irandom(((room_width div 32)-2)*32)
        if !instance_position(randx,-64+offset,oPlatform)
        {
            new = instance_create(randx,-64+offset,inst)   
            new.x = (new.x div 32) * 32
            new.y = (new.y div 32) * 32 + offset
            enemytimer = 0
            rand2 = 64000
        }
        else
        {
            enemytimer -= 1
        }   
    }
    enemytimer += 1
    
    rand = irandom(8/rate*2)
    if timer > rand
    {
        offset = highest.y mod 32
        num = choose(2,3,4)
        randx = irandom((room_width/32)-num)*32
        for (i=0; i<num; i+=1)
        {
            inst = instance_position(randx+i*32,-64+offset,oPlatform)
            if !inst
            {
                highest = instance_create(randx+i*32,-64+offset,oPlatform)
            }
            
            highest.vspeed = rate
        };  
        timer = 0
    }
    timer += 1/60
    
    oPlatform.vspeed = rate
    oWall.vspeed = rate
    background_vspeed[0] = rate
}
