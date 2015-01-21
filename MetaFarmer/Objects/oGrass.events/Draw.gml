if x > view_xview[0]-32 and x < view_xview[0]+view_wport[0] and  y > view_yview[0]-32 and y < view_yview[0]+view_hport[0]
{
draw_sprite(sprite_index,image_index,x,y)
draw_set_valign(fa_middle)
draw_set_halign(fa_center)
if overlay = true
{
    draw_set_font(-1)
    draw_text(x+16,y+16,string(image_index))
    if keyboard_check(vk_alt)
    {
        draw_set_font(fSmall)
        draw_text(x+15,y+5,string(id))
    }
}
if grid
{
    draw_line(x,y,x+tS,y)
    draw_line(x,y,x,y+tS)
}
}
