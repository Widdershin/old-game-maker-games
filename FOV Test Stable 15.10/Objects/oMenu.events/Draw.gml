draw_set_color(c_white)
draw_set_font(fBasic)
temp = 0
if !a
{
    repeat(menucount)
    {
        draw_set_valign(fa_top)
        draw_set_halign(fa_left)
        draw_text(15,temp*15+15,string(temp+1)+") "+menuitem[temp])
        temp += 1
    }
}
else
{
    draw_set_valign(fa_middle)
    draw_set_halign(fa_center)
    draw_text(320,320,"Generating Dungeon...")
}
