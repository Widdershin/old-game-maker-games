if target
{
    if !ontarget
    {
        draw_sprite(sprite_index,-1,x,y)   
    }
}
else
{
    draw_sprite(sprite_index,-1,x,y)
}

//mp_grid_draw(grid)
//if instance_position(mouse_x,mouse_y,id) && mousefree
//{
    draw_set_font(fDetail)
    draw_sprite(sSpeech,-1,x,y)
    draw_set_color(c_black)
    draw_text(x+5,y-55,name)
    draw_text(x+5,y-40,status)
    //}
if timer {draw_sprite(sConfused,-1,x,y-20)}
