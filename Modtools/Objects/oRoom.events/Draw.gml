clear = 0
draw_sprite_ext(sprite_index,-1,x,y,1,1,image_angle,c_white,255)
xx = x-sprite_width/2-1
yy = y-sprite_height/2-1
xxx = x
yyy = y
roomww = roomw
if abs(image_angle) = 90 || abs(image_angle) = 270 
{
    roomww = roomh 
    xx = x-sprite_height/2-1
    yy = y-sprite_width/2-1
}
diff = roomw-roomh
diff2 = 32-(diff*32)
draw_set_color(c_yellow)
if draw
{
    xz = x+lengthdir_x(xoff,image_angle)
    yz = y+lengthdir_y(yoff,image_angle)
    draw_rectangle(xz,yz,xz+32,yz+32,1)
}
x = -4000
y = -4000
temp = 0
temp2 = 0
repeat(roomw*roomh)
{
    if instance_position(xx+(temp*32)+16,yy+(temp2*32)+16,oRoom) {draw_set_color(c_red)} else {draw_set_color(c_blue) clear +=1}
    draw_rectangle(xx+(temp*32),yy+(temp2*32),xx+(temp*32)+32,yy+(temp2*32)+32,1)
    temp += 1
    if temp > roomww-1 {temp = 0 temp2 += 1}
}
x = xxx
y = yyy
