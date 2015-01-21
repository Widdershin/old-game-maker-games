if !instance_number(oTrain)
{
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

