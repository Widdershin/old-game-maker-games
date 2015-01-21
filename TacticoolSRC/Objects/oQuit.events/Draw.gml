draw_sprite(sprite_index,-1,x,y)
draw_set_color(c_red)
draw_set_valign(fa_middle)
draw_set_halign(fa_center)
draw_set_font(fBasic)
if mouse_id = id 
{
    draw_text(x,y+35,"Quittin's fer Cowards.#Are you a coward?")
    sprite_index = sQuitA
}
else
{
    sprite_index = sQuit
}
