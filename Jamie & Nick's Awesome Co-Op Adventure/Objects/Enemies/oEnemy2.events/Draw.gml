//draw_sprite_ext(sprite_index,-1,x,y,1,1,image_angle,c_white,255)
event_inherited()
if instance_exists(target)
{
    draw_sprite_ext(sprite_index,1,x,y,1,1,image_angle,target.color,255)
}
else
{
    draw_sprite_ext(sprite_index,1,x,y,1,1,image_angle,c_black,255)
}
