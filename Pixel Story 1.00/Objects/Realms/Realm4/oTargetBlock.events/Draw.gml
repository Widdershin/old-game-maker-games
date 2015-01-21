if flip = -1
{
    yOff = sprite_height
}
else
{
    yOff = 0
}
draw_sprite_ext(sprite_index, 0, x, y+yOff, 1, flip, 0, c_white, 1)
draw_sprite_ext(sprite_index, 1, x, y+yOff, 1, flip, 0, color, 1)
