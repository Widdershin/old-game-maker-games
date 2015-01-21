draw_set_font(fFont)
draw_sprite_ext(sWing,-1,x,y-6,1,1,angle,c_white,1)
draw_sprite_ext(sPlayer,-1,x,y,1,1,direction,c_white,1)
draw_sprite_ext(sWing,-1,x,y-4,1,1,angle,c_white,1)

draw_set_color(c_lime)
draw_line(x,y,x+lengthdir_x(100,angle),y+lengthdir_y(100,angle))

draw_set_color(c_aqua)
draw_line(x,y,x+lengthdir_x(100,direction),y+lengthdir_y(100,direction))

draw_set_color(c_black)
draw_text(view_xview+15,view_yview+15,lift)
