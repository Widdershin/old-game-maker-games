hitTime -= 1
stunnedTime -= 1

sprite_index = sBullAlt
if moveDir = 1
    sprite_index = sBull

draw_sprite_ext(sprite_index,-1,x,y,1,1,0,color,c_white)

if !moveDir
{
    xOff = -1   
}
else
{
    xOff = 0
}

draw_set_color(c_red)
draw_set_alpha(hitTime/15)
draw_rectangle(x + xOff, y, x + (t * 3 - 1) * moveDir + xOff, y + t * 2 - 1,0)
draw_set_alpha(1)

draw_set_color(c_white)
draw_set_alpha(stunnedTime/stunnedTimeMax * 0.7) 
draw_rectangle(x + xOff, y, x + (t * 3 - 1) * moveDir + xOff, y + t * 2 - 1,0)
draw_set_alpha(1)
