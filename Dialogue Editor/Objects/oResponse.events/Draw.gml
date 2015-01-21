draw_set_font(fBox)

height = string_height_ext(text, -1, width - xOff * 2 - 16) + yOff * 2

if height < minHeight
    height = minHeight


if editing
    draw_set_color(bColor2)
else
    draw_set_color(bColor)
draw_rectangle(x, y, x + width, y + height, 0)

draw_set_color(oColor)
draw_rectangle(x, y, x + width, y + height, 1)

draw_set_color(tColor)
draw_text_ext(x + xOff, y + yOff, text, -1, width - xOff * 2 - 16)

draw_sprite(sLink, 0, x + width - 15, y + height / 2 - 8)

draw_set_color(aColor)
if newLink
{
    //draw_arrow(x + width - 15 + 8, y + height / 2 - 1, mouse_x, mouse_y, arrowSize)
    mp_grid_path(grid, newLinkPath, x + width + 1, y + height / 2 - 1, mouse_x, mouse_y, 1)
    draw_path(newLinkPath, x + width + 1, y + height / 2 - 1, 0)
}
if link != -1
{
    if updatePathing
        mp_grid_path(grid, linkPath, x + width + 1, y + height / 2 - 1, link.x, link.y + link.height / 2, 1)
    draw_path(linkPath, x + width + 1, y + height / 2 - 1, 0)
    //draw_arrow(x + width - 15 + 8, y + height / 2 - 1, link.x, link.y + link.height / 2, arrowSize)
}
