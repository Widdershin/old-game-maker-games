spawnTime -= 1

if spawnTime <= 0
{
    // SPAWN A GOBLIN LAWL
    instance_create(irandom(320 - 48 / t) + 48, 144, oGoblinSpawn)
    spawnTime = s * 4 + random(s * 3)
}


if !instance_number(oBoss)
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
        piece = instance_create(144, 32, oBookPiece)
        piece.target = rTown
        oPlayer.x = 240
        oPlayer.y = 32
    }
}

