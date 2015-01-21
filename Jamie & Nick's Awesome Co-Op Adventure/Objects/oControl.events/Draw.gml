draw_set_color(c_white)
draw_set_font(fBasic)
draw_set_halign(fa_left)
draw_text(7,5,sp*100)
draw_set_halign(fa_middle)
draw_text(320,5,sin(sp*20)/2+sp*20)
draw_set_halign(fa_right)
draw_text(633,5,current_time)
if rain
{
    draw_sprite(sRain,-1,x,y)
}
prevtime = current_time
