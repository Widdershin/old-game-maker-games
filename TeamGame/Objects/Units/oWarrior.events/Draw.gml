draw_sprite_ext(sprite_index,-1,x,y,1,1,dir,image_blend,1)
draw_sprite_ext(sHead,-1,x,y,1,1,lookdir,image_blend,1)


num = 8
fov = 90
range = 250
draw_set_color(image_blend)
draw_set_alpha(0.1)
for(i = 0; i < num-1; i += 1)
{
    p1x = x+lengthdir_x(range,(lookdir+fov/2)+fov/num*i)
    p1y = y+lengthdir_y(range,(lookdir+fov/2)+fov/num*i)
    p2x = x+lengthdir_x(range,(lookdir+fov/2)+fov/num*(i+1))
    p2y = y+lengthdir_y(range,(lookdir+fov/2)+fov/num*(i+1))
    draw_triangle(x,y,p1x,p1y,p2x,p2y,0)
}
draw_set_alpha(1)
