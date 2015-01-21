globalvar graph;
graph = surface_create(room_width,room_height)
surface_set_target(graph)
xmin = 0
xmax = 20
i = 0
repeat(xmax/2)
{
    intx = (room_width/xmax)*2
    draw_text(i*intx+2,0,i*2)
    draw_line(i*intx,0,i*intx,room_height)
    i += 1
}
i = 0
repeat(room_height/10)
{
    inty = (room_width/10)
    draw_text(2,i*inty,i*2)
    draw_line(0,i*inty,room_width,i*inty)
    i += 1
}
eq = "yy = xx"
xx = 0
yy = 0
xz = xx
yz = yy
int = ((xmax/640)*xmax)
draw_set_color(c_aqua)
for(i = 0; i < room_width; i += 1)
{
    xx = int*i
    execute_string(eq)
    draw_point(i,yy)
    draw_line(i,yy,xz,yz)
    xz = i
    yz = yy
}
surface_reset_target()


