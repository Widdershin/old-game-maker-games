hspeed *= moveFriction

if keyboard_check(vk_right)
{
    hspeed = moveSpeed
}
if keyboard_check(vk_left)
{
    hspeed = -moveSpeed
}

if keyboard_check(vk_up)
{
    vspeed = jumpSpeed
    onGround = false
}


if hspeed != 0
{
    xScale = sign(hspeed)
}
