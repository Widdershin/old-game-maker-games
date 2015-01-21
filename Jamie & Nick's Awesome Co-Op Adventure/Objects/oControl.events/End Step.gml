if (keyboard_check_pressed(ord("R")))
{
    game_restart()
}
with (oPlayer)
{
    if onground && !test
    {
        x -= sp*0.5
    }
}
if timer > 0
{
    timer -= 1
}
else if !test
{
    instance_create(room_width,random(room_height),choose(oEnemy1,oEnemy2))
    timer = timers-sin(sp*20)+sp*20             //(sp*20)
}
sp += splus

if keyboard_check_pressed(vk_f2)
{
    highscore_clear()
}
