if (keyboard_check_pressed(ord("R")))
{
    game_restart()
}
with (oPlayer)
{
    if onground
    {
        x -= sp*0.5
    }
}
with (oObject)
{
    x -= sp*0.5
}
if timer > 0
{
    timer -= 1
}
else
{
    instance_create(room_width,random(room_height),choose(oEnemy,oEnemy2))
    timer = timers-(sp*20)
}
sp += splus
if instance_number(oPlayer) < 2
{
    highscore_show(sp*100)
    game_restart()
}
if keyboard_check_pressed(vk_f2)
{
    highscore_clear()
}
