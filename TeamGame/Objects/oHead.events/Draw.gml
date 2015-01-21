draw_sprite_ext(sWarrior,-1,x,y,5,5,dir,c_white,1)
draw_sprite_ext(sprite_index,-1,x,y,5,5,dir,c_white,1)

draw_set_color(c_red)
draw_line(x,y,x+lengthdir_x(100,dir),y+lengthdir_y(100,dir))

draw_set_color(c_aqua)
draw_line(x,y,x+lengthdir_x(100,looktarget),y+lengthdir_y(100,looktarget))
