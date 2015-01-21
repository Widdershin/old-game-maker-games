xscale = 1
yscale = 1
image_angle = 0
player = choose(oPlayer1,oPlayer2)
if player = oPlayer1
{
    powerup = irandom(p1pickup[0,0]-1)+1
}
if player = oPlayer2
{
    powerup = irandom(p2pickup[0,0]-1)+1
}
//show_message(string(player)+": "+string(powerup))
