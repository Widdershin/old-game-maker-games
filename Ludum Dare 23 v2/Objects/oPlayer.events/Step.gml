tryX = 0
tryY = 0
inputWait -= 1

if inputWait <= 0
{
    if keyboard_check(ord("W"))
    {
        tryY += -1
    }
    if keyboard_check(ord("A"))
    {
        tryX += -1
    }
    
    if keyboard_check(ord("S"))
    {
        tryY += 1
    }
    
    if keyboard_check(ord("D"))
    {
        tryX += 1
    }
}

if tryX != 0 || tryY != 0
{
    newY = y+tryY * 16
    if !instance_place(x, newY, pWall) && newY > -1 && newY < room_height - t - 1
    {
        y = newY
        inputWait = inputDelay
    }
    
    newX = x+tryX * 16
    if !instance_place(newX, y, pWall) && newX > -1 && newX < room_width-1
    {
        x = newX
        inputWait = inputDelay
    }
}

portal = instance_place(x, y, oPortal)
if portal
{
    portalTime += 1
    if portalTime = 30
        sound_play(soPortal)
    if portalTime = 120
    {
        if instance_place(x,y, oBookPiece)
        {
            bookPieces += 1
            oTracker.won = true
        }
        else
        {
            oTracker.lastPortal = portal
        }
        room_goto(portal.target)
    }
}
else if !portalLock
{
    portalTime = 0
}

shootWait -= 1
if mouse_check_button(mb_left) && shootWait <= 0
{
    fireBall = instance_create(x,y,oFireball)
    fireBall.speed = 4
    fireBall.direction = point_direction(x, y, mouse_x, mouse_y)
    sound_play(soShoot)
    shootWait = shootCooldown
}

if hit > 0
{
    hp -= hit
    if hitAnim
    {
        with (hitAnim)
        {
            instance_destroy()
        }
    }
            
    hitAnim = instance_create(x, y, oHit)
    hit = 0
}

if hitAnim
{
    hitAnim.x = x
    hitAnim.y = y
    if hitAnim.image_index = hitAnim.image_number-1
    {
        with (hitAnim)
        {
            instance_destroy()
        }
        hitAnim = -1
    }

}


lavaCooldown -= 1

if instance_place(x,y,oLava) && lavaCooldown <= 0
{
    hit += 1
    lavaCooldown = 10
    inputWait += 7
}

if hp <= 0
{
    room_goto(rTown)
    sound_play(soDeath)
}

if debug
{
    if keyboard_check(ord("R"))
    {
        if keyboard_check(vk_shift)
        {
            game_restart()
        }
        else
        {
            room_restart()
        }
    }
    switch (string_char_at(keyboard_string,string_length(keyboard_string)))
    {
        case '1': room_goto(rRealm1); break;
        case '2': room_goto(rRealm2); break;
        case '3': room_goto(rRealm3); break;
        case '4': room_goto(rRealm4); break;
        case '5': room_goto(rRealm5); break;
        case '6': room_goto(rRealm6); break;
    }
    
}



dX = x div t * t
dY = y div t * t

if room = rTown
{
    if point_distance(x + t/2,y + t/2,oBook.x+t,oBook.y+t*1.5) <= 40 && bookPieces = 6
    {
        portalTime += 1
        portalLock = true
        if portalTime = 120
        {
            room_goto(rOuttro)
        }
        //show_message("You won! Test ending, please ignore!")
        //game_end()
    }
}
