/*
    Draws the message box with text in it
*/
draw_sprite(sprite_index,-1,x,y)
length = string_width(message)/3
draw_sprite_ext(sTextBoxSlice,-1,x+6,y,length,1,0,c_white,1)
draw_sprite_ext(sTextBoxEnd,-1,x+length+12,y,-1,1,0,c_white,1)
draw_set_color(c_black)
draw_circle(x+24,y+24,20,0)
draw_sprite(sKing,-1,x+24,y+24)
draw_set_font(fBasic)
draw_text_ext(x+48,y+4,string_copy(message,0,typed),-1,length-40)
