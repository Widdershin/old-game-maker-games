globalvar walltidy;
with(oWall)
{
    walltidy = 0
    if instance_position(x-32,y,oWall) {walltidy += 1}
    if instance_position(x+32,y,oWall) {walltidy += 1}
    if instance_position(x,y-32,oWall) {walltidy += 1}
    if instance_position(x,y+32,oWall) {walltidy += 1}
    if walltidy > 2 {instance_create(x,y,oFloor) instance_destroy()}
}
