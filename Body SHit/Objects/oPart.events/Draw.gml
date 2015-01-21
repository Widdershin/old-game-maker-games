draw_sprite_ext(sprite_index, image_index, round(x), round(y), yScale, 1, image_angle, c_white, 1)


if keyboard_check(ord("L"))
{
    draw_set_color(merge_color(c_aqua, c_blue, (depth + 10) / 20))
    draw_arrow(x, y, x + lengthdir_x(25, image_angle), y + lengthdir_y(25, image_angle), 5)
}

if keyboard_check(ord("N"))
{
    draw_set_color(c_yellow)
    draw_text(x + 5, y, angleOffset)   
}
