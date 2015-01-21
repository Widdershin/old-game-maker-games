/*
    Draws the buttons and labels
*/
draw_sprite(sprite_index,-1,x,y)
draw_set_valign(fa_center)
draw_set_halign(fa_middle)
draw_set_color(c_white)
draw_set_font(fBasic)
draw_text(x,y-32,"["+key+"]")
w = string_width(label)
draw_roundrect(x-w/2-2,y+14,x+w/2+2,y+22,0)
draw_set_color(c_black)
draw_text(x,y+18,label)
draw_set_valign(fa_top)
draw_set_halign(fa_left)

