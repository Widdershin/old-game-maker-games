avx = 0
avy = 0
for (i=0; i<instance_number(oBoid); i+=1)
{
    inst = instance_find(oBoid,i)
    avx += inst.x
    avy += inst.y
}
flockavx = avx/instance_number(oBoid)
flockavy = avy/instance_number(oBoid)
if keyboard_check_pressed(vk_space)
{
    if moredraw {moredraw = false}
    else if !moredraw {moredraw = true}
} 
if keyboard_check_pressed(vk_up)
{
    instance_create(room_width/2,room_height/2,oBoid)
}
if keyboard_check_pressed(vk_down)
{
    with instance_find(oBoid,instance_number(oBoid)-1)
    {
        instance_destroy()
    }
}
/*
if instance_number(oBoid) < 50 && delay <= 0
{
    instance_create(room_width/2,room_height/2,oBoid)
    delay = delayx
}
delay -= 1
*/
if keyboard_check(ord("1"))
{
    range += 1/2
}
if keyboard_check(ord("2")) && range > 1
{
    range -= 1/2
}
if keyboard_check(ord("3"))
{
    maxspeed += 1/10
}
if keyboard_check(ord("4")) && maxspeed > 1
{
    maxspeed -= 1/10
}
if keyboard_check_pressed(ord("M"))
{
    if !menu
    {
        menu = true
        
    }
    else if menu
    {
        menu = false
    }
}
if keyboard_check_pressed(ord("R"))
{
    boidcolor()
}
