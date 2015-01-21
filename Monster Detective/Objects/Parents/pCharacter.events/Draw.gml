if !drawMove
{
    dx = oldX + (((x - oldX) / interpSpeed) * interp)
    dy = oldY + (((y - oldY) / interpSpeed) * interp)
    interp += 1
}
if dx = x and dy = y
{
    drawMove = true
}
xc = dx + sprite_width / 2
yc = dy + sprite_height / 2 + yOffset

shadowW = 8
shadowH = 8
shadowY = 7
draw_set_color(c_black)
draw_set_alpha(0.25)
draw_ellipse(xc - shadowW - 1, yc + shadowY, xc + shadowW, yc + shadowY + shadowH, 0)

draw_set_alpha(0.95)

draw_sprite(sprite_index, 0, dx, dy + yOffset)


