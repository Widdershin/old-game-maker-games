spawnTime -= 1

if spawnTime == 0
{
    // SPAWN A GOBLIN LAWL
    side = irandom(3)
    switch(side)
    {
        case 0: sx = 0;   sy = 0;   break; //top left
        case 1: sx = 368; sy = 0;   break; //top right
        case 2: sx = 368; sy = 368; break; //bottom right 
        case 3: sx = 0;   sy = 368; break; //bottom left
    }
    instance_create(sx, sy, oGoblin)
    spawnTime = spawnDelay
}

if !instance_number(oDeathBall)
{
    with(oGoblin)
    {
        instance_destroy()
    }
    spawnTime = 500
    winDelay -= 1
    if winDelay <= 0
    {
        winTime += 1
    }
    if winTime = 200
    {
        sound_play(soPiece)
        piece = instance_create(176, 144, oBookPiece)
        piece.target = rTown
        oPlayer.x = 192
        oPlayer.y = 224
    }
}

