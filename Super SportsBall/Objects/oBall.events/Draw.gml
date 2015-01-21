//execute_file(object_get_name(object_index) + "Draw.txt")

draw_sprite_ext(sprite_index, 0, round(x), round(y), 1, 1, 0, c_white, 1)

if held
{
	color = merge_color(defaultColor, currentColor, chargeDraw / chargeDrawMax)
}
else
{
	color = defaultColor
}
draw_sprite_ext(sprite_index, 1, round(x), round(y), 1, 1, 0, color, 1)

