var holdCount;
holdCount = 3
if targetX = x && targetY = y
{
    hspeed = 0
    vspeed = 0
    moving = false
}
//Move Left
if keyboard_check(vk_left) && moving = false
{
    image_angle = 90
    leftCount += 1
    if leftCount > holdCount
    {
        targetX = x - tS
        hspeed = -4
        moving = true
    }
}
else if !keyboard_check(vk_left)
{
    leftCount = 0
}
//Move Right
if keyboard_check(vk_right) && moving = false
{
    image_angle = 270
    rightCount += 1
    if rightCount > holdCount
    {
        targetX = x + tS
        hspeed = 4
        moving = true
    }
}
else if !keyboard_check(vk_right)
{
    rightCount = 0
}
//Move Up
if keyboard_check(vk_up) && moving = false
{
    image_angle = 0
    upCount += 1
    if upCount > holdCount
    {
        targetY = y - tS
        vspeed = -4
        moving = true
    }
}
else if !keyboard_check(vk_up)
{
    upCount = 0
}
//Move Down
if keyboard_check(vk_down) && moving = false
{
    image_angle = 180
    downCount += 1
    if downCount > holdCount
    {
        targetY = y + tS
        vspeed = 4
        moving = true
    }
}
else if !keyboard_check(vk_down)
{
    downCount = 0
}
// Set the target location
crossID.x = x+lengthdir_x(24,image_angle+90)
crossID.y = y+lengthdir_y(24,image_angle+90)
