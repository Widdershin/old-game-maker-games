//oShip Step
flipped = false

if keyboard_check(vk_up)
{
    motion_add(image_angle,0.1)
}

if keyboard_check(vk_left)
{
    image_angle += rotspeed
}

if keyboard_check(vk_right)
{
    image_angle -= rotspeed
}

if speed > topspeed
{
    speed = topspeed
}

if keyboard_check(vk_space) && timer <= 0
{
    bullet = instance_create(x,y,oBullet)
    bullet.speed = 5
    bullet.direction = image_angle
    bullet.image_angle = image_angle
    timer = cooldown
}

if x < 0
{
    x += room_width
    flipped = true
}

if x > room_width
{
    x -= room_width
    flipped = true
}

if y < 0
{
    y += room_height
    flipped = true
}

if y > room_height
{
    y -= room_height
    flipped = true
}


timer -= 1
