hitTime -= 1
draw_sprite_ext(sprite_index,-1, x, y, 1, 1, 0, color, 0.9)

if shootWait < 60
{
    draw_sprite_ext(sprite_index,1,x,y,1,1,0,merge_color(color, c_black, 0.5),1 - (shootWait/60))
}

draw_sprite_ext(sprite_index,1,x,y,1,1,0,c_red,hitTime/15)

