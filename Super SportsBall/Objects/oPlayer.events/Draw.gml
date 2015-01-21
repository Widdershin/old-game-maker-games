//execute_file("oPlayerDraw.txt")

draw_sprite_ext(sprite_index, 0, round(x), round(y), 1, 1, 0, c_white, 1)
draw_sprite_ext(sprite_index, 1, round(x), round(y), 1, 1, 0, color, 1)

draw_set_font(fName)
draw_set_valign(fa_center)
draw_set_halign(fa_middle)
draw_set_color(merge_color(c_white, color, 0.75))
draw_text(round(x), round(y) - sprite_width , name)

if stunned
{
    draw_text(round(x), round(y) - sprite_width - 15 , "STUNNED")
}

if gamepad
{
    draw_text(30, 30, xInput)
}

indOffset = 40


draw_sprite_ext(sIndicator, -1, round(x + lengthdir_x(indOffset, aimDirection)), round(y + lengthdir_y(indOffset, aimDirection)), 1, 1, round(aimDirection), c_white, 1)

if pickUpWant
draw_sprite(sPickMeUp, -1, x, y - sprite_width * 1.7)

if pickUpGive
draw_sprite(sPickYouUp, -1, x, y - sprite_width * 1.7)
