accX = 0
accY = 0

if keyboard_check(upKey)
{
    accY = 1
}

if keyboard_check(downKey)
{
    accY = -1
}

if keyboard_check(rightKey)
{
    accX = -1
}

if keyboard_check(leftKey)
{
    accX = 1
}

speed += accY * accRate
rot += accX * turnRate
direction += rot

speed *= fricRate
rot *= turnFricRate


facingDirection = point_direction(x, y, mouse_x, mouse_y)
drawDirection = facingDirection + spriteRotOffset

if mouse_check_button_pressed(mb_left)
{
    if !fireSide
    {
        len = point_distance(0, 0, gunOffsetX, gunOffsetY)
        ang = point_direction(0, 0, gunOffsetX, gunOffsetY)
        fireSide = 1
    }
    else if fireSide
    {
        len = point_distance(0, 0, -gunOffsetX, gunOffsetY)
        ang = point_direction(0, 0, -gunOffsetX, gunOffsetY)
        fireSide = 0
    }
    
    spawnX = x + lengthdir_x(len, drawDirection + ang)
    spawnY = y + lengthdir_y(len, drawDirection + ang)
        
    rocketID = instance_create(spawnX, spawnY, oRocket)
    rocketID.speed = 5
    rocketID.direction = facingDirection
    
    
    draw_line(x + lengthdir_x(len, drawDirection + ang), y + lengthdir_y(len, drawDirection + ang), mouse_x, mouse_y)
}


/*
if keyboard_check(upKey)
{
    accY = -1
}

if keyboard_check(downKey)
{
    accY = 1
}

if keyboard_check(rightKey)
{
    accX = 1
}

if keyboard_check(leftKey)
{
    accX = -1
}

if(accX != 0 || accY != 0)
{
    
    speed += accRate //adjust speed
    
    
    
    dirDiff = point_direction(0, 0, accX, accY) - direction //difference between actual and target direction
    
    while dirDiff > 180 //wrap around
        dirDiff -= 360
    while dirDiff < -180
        dirDiff += 360
    
    
    if(dirDiff > turnRate)
        direction += turnRate
    else if(dirDiff < -turnRate)
        direction -= turnRate
    else
        direction += dirDiff
}
*/
