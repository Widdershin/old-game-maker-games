draw_set_color(c_white)
draw_set_font(fIntroSmall)
draw_set_halign(fa_middle)
draw_set_valign(fa_center)

text = "No Gamepad detected."
if gamepadID
{
    text = "Gamepad detected!"
}

draw_text(x, y, text)
