spawnTime -= 1

if spawnTime <= 0
{
    // SPAWN A GOBLIN LAWL
    side = irandom(1)
    switch(side)
    {
        case 0: sx = (irandom(18)+3) * t; sy = t * 2; break; //top
        case 1: sx = (irandom(18)+3) * t; sy = t * 22; break; //bottom
    }
    if debug
    show_debug_message(side)
    instance_create(sx, sy, oGoblinSpawn)
    spawnTime = s * 4 + random(s * 3)
}

if !instance_number(oBull)
{
    with(oGoblin)
    {
        instance_destroy()
    }
    with(oGoblinSpawn)
    {
        instance_destroy()
    }
    spawnTime = 5000
    winDelay -= 1
    if winDelay <= 0
    {
        winTime += 1
    }
    if winTime = 200
    {
        sound_play(soPiece)
        piece = instance_create(192, 112, oBookPiece)
        piece.target = rTown
        oPlayer.x = 176
        oPlayer.y = 208
    }
}

