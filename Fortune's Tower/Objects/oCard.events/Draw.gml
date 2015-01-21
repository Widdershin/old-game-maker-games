if isGate
{
    draw_sprite(sprite_index,1,x,y)
}
else
{
    if value != 0
    {
        draw_sprite(sprite_index,0,x,y)
        draw_set_font(fCard)
        draw_set_color(c_black)
        if rowMultiple[r] && !isSafe
        {
            draw_sprite(sStar,0,x+sprite_width/2,y+14)
            draw_sprite(sStar,1,x+sprite_width/2,y+14)
        }
        if burn
        {
            draw_set_color(c_red)
        }
        draw_text(x+8,y+6,string(value))
    }
    else
    {
        draw_sprite(sprite_index,2,x,y)
    }
    if isSafe
    {
        draw_sprite(sStar,0,x+sprite_width/2,y+14)
    }
    
    
    //draw_text_transformed(x+sprite_width-8,y+sprite_height-6,string(value),1,1,180)
}


