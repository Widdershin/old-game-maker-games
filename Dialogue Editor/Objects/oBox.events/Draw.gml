draw_set_font(fBox)

height = string_height_ext(text, -1, width - xOff * 2) + yOff * 2

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
draw_text_ext(x + xOff, y + yOff, text, -1, width - xOff * 2)

