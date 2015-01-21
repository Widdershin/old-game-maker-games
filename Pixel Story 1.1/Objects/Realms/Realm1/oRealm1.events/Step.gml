spawnTime -= 1

if spawnTime == 0 && enemiesLeft > 0
{
    // SPAWN A GOBLIN LAWL
    side = irandom(3)
    switch(side)
    {
        case 0: sy = irandom(23) * t; sx = 0; break; // left
        case 1: sx = irandom(23) * t; sy = 0; break; // top
        case 2: sy = irandom(23) * t; sx = room_width-t; break; //right 
        case 3: sx = irandom(23) * t; sy = room_height-t*2; break; //bottom
    }
    show_debug_message(side)
    instance_create(sx, sy, oGoblin)
    enemiesLeft -= 1
    spawnTime = spawnDelay
}

if enemiesLeft = 0 && !instance_number(oGoblin)
{
    winDelay -= 1
    if winDelay <= 0
    {
        winTime += 1
    }
    if winTime = 200
    {
        sound_play(soPiece)
        piece = instance_create(176, 112, oBookPiece)
        piece.target = rTown
        oPlayer.x = 176
        oPlayer.y = 256
    }
}

