if hspeed != 0
{
    image_speed = imSpeed
}
else
{
    image_speed = 0
    image_index = 2
}

draw_sprite_ext(sprite_index, image_index, x, y, xscale, 1, 0, c_white, 1)
