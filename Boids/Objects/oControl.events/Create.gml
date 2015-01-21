globalvar flockavx, flockavy, surface, moredraw, range, maxspeed, menu;
if trails
{
    surface = surface_create(room_width,room_height)
}
moredraw = false
window_set_cursor(cr_none)
instance_create(room_width/2,room_height/2,oCursor)
repeat(50)
{
    instance_create(room_width/2,room_height/2,oBoid)
}
delayx = 20
delay = delayx
range = 50
maxspeed = 5
r = mean(redlow,redhigh)
g = mean(greenlow,greenhigh)
b = mean(bluelow,bluehigh)
color = make_color_rgb(r,g,b)
offset = 0
menu = false
