if state = 0
{
    draw_sprite_ext(sprite_index,-1,x,y,1,1,image_angle,-1,255)
    draw_set_color(c_black)
    draw_roundrect(x-22,y+25,x+22,y+33,0)
    draw_set_color(c_lime)
    draw_roundrect(x-21,y+26,x-21+(42*(HP/HPTotal)),y+32,0)
}
if state = 1
{
    draw_sprite_ext(sprite_index,-1,x,y,-0.7,0.7,image_angle,-1,255)
}
if state = 2
{
    draw_sprite_ext(sprite_index,-1,x,y,-1,1,image_angle,-1,255)
    if mouse_id = id
    {
        //draw damage bar
        draw_set_color(c_black)
        draw_roundrect(x-22,y+14,x+22,y+21,0)
        draw_set_color(c_red)
        draw_roundrect(x-21,y+15,x-21+(42*(damage/300)),y+20,0)
        draw_set_color(c_orange)
        draw_line(x,y+14,x,y+21)

        //draw firerate bar
        draw_set_color(c_black)
        draw_roundrect(x-22,y+5,x+22,y+12,0)
        draw_set_color(c_yellow)
        draw_roundrect(x-21,y+6,x-21+(42*((300-firedelay+30)/300)),y+11,0)
        draw_set_color(c_orange)
        draw_line(x,y+5,x,y+12)
        
        //draw time till next fire
        draw_set_color(c_blue)
        draw_line(x-20,y+8,x-22+42*((firedelay-firenext)/firedelay),y+8)
        draw_line(x-20,y+9,x-22+42*((firedelay-firenext)/firedelay),y+9)
        
        //draw range
        draw_set_circle_precision(64)
        draw_set_color(c_blue)
        draw_circle(x,y,range,1)
        draw_set_color(c_teal)
        draw_circle(x,y,range-1,1)
    }
}


