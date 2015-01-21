//oPaddle2 Step
if (keyboard_check(vk_down) and y < room_height - 64)
{
    y += 3 //Moves the paddle down
}
if (keyboard_check(vk_up) and y > 64)
{
    y -= 3 //Moves the paddle up
}
