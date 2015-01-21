draw_sprite(sprite_index,-1,x,y)
draw_set_color(c_white)
draw_set_font(fBasic)
if ready
{   temp = 0
    repeat(ds_list_size(colour))
    {
        draw_text(40,5+temp*15,string(ds_list_find_value(colour,temp))+"x"+string(count[temp]))
        temp += 1
    }
}
