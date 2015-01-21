mp_linear_step(player.x,player.y,3,0)
if speed = 0
{
direction = random(360)
speed = 3
}
if collision_circle(x,y,10,zombie,1,1)
{
move_outside_solid(random(360),30)
}
