
spawnTime -= 1

if spawnTime <= 0
{
    // SPAWN A GOBLIN LAWL
    side = irandom(3)
    switch(side)
    {
        case 0: sx = x1; sy = y1; break; //top left
        case 1: sx = x2 - t; sy = y1; break; //top right
        case 2: sx = x2 - t; sy = y2 - t; break; //bottom right 
        case 3: sx = x1; sy = y2 - t; break; //bottom left
    }
    show_debug_message(side)
    instance_create(sx, sy, oGoblinSpawn)
    spawnTime = s * 3 + random(s * 3)
}

if !active
{
    waveWait -= 1
}
else
{
    activeWait -= 1    
    if activeWait <= 0
    {
        if activeTarget.active != 2
        {
            // PUNISH HIM
            sound_play(soFail)
            xMax = (x2 - x1) / t
            yMax = (y2 - y1) / t
            for(i = 0; i < xMax; i += 1)
            {
                for (j = 0; j < yMax; j += 1)
                {
                    if (i = 0 || j = 0 || i = xMax-1 || j = yMax-1)
                    {
                        instance_create(x1 + i * t, y1 + j * t, oLava)
                    }
                }
            }
            x1 += t
            y1 += t
            x2 -= t
            y2 -= t
        }
        else
        {
            winCondition += 1
        }
        waveDelay = random(s*2) + s*3
        waveWait = waveDelay
        active = false
        oTargetBlock.active = -1
    }
}

if winCondition = win
{
    with(oGoblin)
    {
        instance_destroy()
    }
    waveWait = 5000
    spawnTime = 5000
    winDelay -= 1
    if winDelay <= 0
    {
        winTime += 1
    }
    if winTime = 200
    {
        x1 = 112
        y1 = 112
        x2 = 272
        y2 = 272
        xMax = (x2 - x1) / t
        yMax = (y2 - y1) / t
        for(i = 0; i < xMax; i += 1)
        {
            for (j = 0; j < yMax; j += 1)
            {
                lava = instance_position(x1 + i * t, y1 + j * t, oLava)
                with (lava)
                {
                    instance_destroy()
                }
            }
        }

        sound_play(soPiece)
        piece = instance_create(176, 128, oBookPiece)
        piece.target = rTown
        oPlayer.x = 192
        oPlayer.y = 240
    }
}

if waveWait <= 0 && !active
{
    sound_play(soStart)
    targetNumber = instance_number(oTargetBlock)
    activeTarget = instance_find(oTargetBlock, irandom(targetNumber - 1))
    oTargetBlock.active = false
    activeTarget.active = true
    active = true
    if point_distance(activeTarget.x + t, activeTarget.y + t, room_width/2, (room_height - t)/2) > 165
    {
        activeWait = s*1.9
    }
    else
    {
        activeWait = s*1.65
    }
    
    
}
