globalvar rate, rocketpart, gravitynum, pause, brate, over;
over = false
gravitynum = 0.175
rate = 0.75
pause = true
if pause
{
    brate = rate
    rate = 0
}
background_vspeed[0] = rate
oPlatform.vspeed = rate
rocketpart = part_type_create()
part_type_sprite(rocketpart,sRocketTrail,0,0,0)
part_type_size(rocketpart,0.8,1,-0.025,0)
timer = 0
enemytimer = 0
rand2 = 64000
highest = oPlatform
if !pause
{
    walltime = 32/rate
    walltimed = walltime
}
instance_create(0,-32,oWall)
instance_create(room_width-32,-32,oWall)
//gameover()
