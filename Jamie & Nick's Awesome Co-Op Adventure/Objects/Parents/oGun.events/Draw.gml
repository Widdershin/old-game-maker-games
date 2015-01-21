draw_sprite_ext(sprite_index,0,x,y,xscale*spritescale,yscale*spritescale,image_angle,c_white,255)
if instance_exists(orig)
{
    draw_sprite_ext(sprite_index,1,x,y,xscale*spritescale,yscale*spritescale,image_angle,orig.colord,255)
}
else
{
    instance_destroy()
}
