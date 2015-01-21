draw_sprite_ext(sprite_index,0,x,y,xscale,yscale,image_angle,player.color,255)
draw_set_halign(fa_middle)
draw_set_valign(fa_center)
draw_set_font(fPowerup)
if player = oPlayer1
{
    draw_text(x-1,y-1,p1pickup[powerup,1])
}
if player = oPlayer2
{
    draw_text(x-1,y-1,p2pickup[powerup,1])
}
draw_set_halign(fa_left)
draw_set_valign(fa_top)
