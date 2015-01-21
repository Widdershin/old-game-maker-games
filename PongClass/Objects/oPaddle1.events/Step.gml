//oPaddle1 Step
if (keyboard_check(ord("S")) and y < room_height - 64)
{
    y += 3 //Moves the paddle down
}
if (keyboard_check(ord("W")) and y > 64)
{
    y -= 3 //Moves the paddle up
}
