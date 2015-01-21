/*
    Draws the Goal UI, with the counts
*/
draw_sprite(sprite_index,-1,x,y)
draw_set_halign(fa_middle)
draw_set_valign(fa_center)
draw_set_color(c_black)
draw_set_font(fMedium)
draw_text(x,y,string(oDoor.out)+"/"+string(oDoor.need))
draw_set_halign(fa_left)
draw_set_valign(fa_top)
