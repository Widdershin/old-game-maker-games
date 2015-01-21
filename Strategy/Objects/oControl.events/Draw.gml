if boxSelect
{
    draw_set_color(c_lime)
    draw_set_alpha(0.25)
    draw_rectangle(boxSelectX, boxSelectY, boxSelectX2, boxSelectY2, 0)
    draw_set_alpha(0.5)
    draw_rectangle(boxSelectX, boxSelectY, boxSelectX2, boxSelectY2, 1)
}
