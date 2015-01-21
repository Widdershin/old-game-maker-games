if bookPieces != 0
{
    draw_sprite(sprite_index,bookPieces-1,x,y)
    if bookPieces = 6
    {
        draw_sprite(sBookGlow, -1, x, y)
    }
}

if flashTime > 0
{
    draw_sprite_ext(sprite_index,6,x,y,1,1,0,c_white,flashTime/60)
}


