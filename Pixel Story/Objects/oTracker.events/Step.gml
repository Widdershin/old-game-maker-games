fadeIn -= 1
if roomPrev != room && won
{
    //show_message("about to destroy" + object_get_name(lastPortal))
    destroy = instance_position(oPlayer.x, oPlayer.y, oPortal)
    with(destroy)
    {
        instance_destroy()
    }
    won = false
}

if roomPrev != room
{
    fadeIn = 30
    sound_stop_all()
    if room = rTown
    {   
        sound_play(soDeath)
        if bookPieces != 6
        {
            sound_loop(smTown)
        }
        else
        {
            sound_loop(smVictory)
        }
    }
    else if room = rOuttro
    {
        sound_loop(smVictory)
    }
    else
    {
        sound_loop(smBattle)
    }
}



roomPrev = room


