///////////////////////////////////Weapon Code///////////////////////////////////////////////////
equipid.x = x
equipid.y = y
equipid.image_angle = point_direction(x,y,mouse_x,mouse_y)
if equipid.image_angle > 90 && equipid.image_angle < 270
{
    equipid.yscale = -1
}
else
{
    equipid.yscale = 1
}
if mouse_check_button_pressed(mb_left)
{
    projectileid = instance_create(equipid.x,equipid.y,equipid.projectile)
    projectileid.speed = 5
    projectileid.direction = equipid.image_angle
}
