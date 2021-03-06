execute_file("oPlayerStep.txt")
/*
//game_restart()


throwInput= false
jumpInput = false
pickUpWant = false
pickUpGive = false

if stunned <= 0
{
    if !gamepad
    {
        
        if keyboard_check(keyUp)
        {
            jumpInput = true
        }
        
        if keyboard_check(keyLeft)
        {
            hspeed -= hAccel
        }
        if keyboard_check(keyRight)
        {
            hspeed += hAccel
        }
        
        
        if keyboard_check(keyWant)
        {
            pickUpWant = true
        }
        else if keyboard_check(keyGive)
        {
            pickUpGive = true
        }
        
        throwInput = mouse_check_button(mb_left)
        
        aimDirection = point_direction(x, y, mouse_x, mouse_y)
    }
    else
    {
        xInput = joystick_xpos(gamepad)
        if abs(xInput) > deadzone
            hspeed += hAccel * xInput
        
        aimXInput = joystick_upos(gamepad)
        aimYInput = joystick_rpos(gamepad)
        
        throwInput = joystick_check_button(gamepad, 5)
        
        if abs(aimXInput) > deadzone or abs(aimYInput > deadzone)
        {
            aimDirection = point_direction(0, 0, aimXInput, aimYInput)
            throwInput = true
        }   
        
        
        
        if joystick_check_button(gamepad, 0) or joystick_check_button(gamepad, 4)
        {
            jumpInput = true
        }
        
        if joystick_check_button(gamepad, 1)
        {
            pickUpWant = true
        }
        if joystick_check_button(gamepad, 3)
        {
            pickUpGive = true
        }
        
        callInput = joystick_zpos(gamepad)
        if abs(callInput) > deadzone
        {
            if callInput < 0
            {
                pickUpWant = true
            }
            else
            {
                pickUpGive = true
            }
        }
    }
}
player = instance_place(x, y, oPlayer)
if player and !hasBall and justThrown <= 0 and !held
{
    if player.team = team and player.pickUpWant
    {
        hasBall = player
        hasBall.held = true
    }
}
if player
{
    if player.team != team
    {
        if player.speed < speed
        {
            player.stunned = stunnedTime
            
            if player.hasBall
            {
                hasBall = player.hasBall
                player.hasBall = false
            }
        }
    }
}



if instance_place(x + hspeed, y, oWall)
{
    movingLeft = false
    if hspeed < 0
        movingLeft = true
        
    move_contact_solid(0 + (180 * movingLeft), hspeed)
    hspeed = 0
    
}

if !onGround
{
    gravity = gravityMax
    if vspeed > 0
    {
        ground = instance_place(x, y + vspeed + 1, oWall)
        if ground
        {
            onGround = true
            move_contact_solid(270, vspeed + 1)
            vspeed = 0
            gravity = 0
            ground.stoodOn = true
        }
    }
    else
    {
        if instance_place(x, y + vspeed - 1, oWall)
        {
            move_contact_solid(90, vspeed - 1)
            vspeed = 0
        }
    }
}
else
{
    if !instance_place(x, y + 1, oWall)
    {
        onGround = false
    }
    
    if jumpInput
    {
        onGround = false
        jumping = true
        jumpCount = 0
    }
    hspeed *= hFric
}

ball = instance_place(x, y, oBall)
if ball and justThrown <= 0
{
    if !ball.held
    {
        ball.held = id
        hasBall = ball
    }
}



if jumping
{
    if !jumpInput || jumpCount > jumpTime
    {
        jumping = false
        jumpCount = 0
    }
    else
    {
        vspeed -= (jumpAccel * (1 - (jumpCount / jumpTime)))
        jumpCount += 1
    }
}

justThrown -= 1

if keyboard_check(ord("R"))
{
    game_restart()
}




if hasBall
{
    hasBall.x = x
    hasBall.y = y - sprite_width / 2
    hasBall.speed = 0
    hasBall.currentColor = color
    hasBall.chargeDraw = charge
    hasBall.lastTeam = team
    
    if hasBall.pickUpGive
    {
        hasBall.held = false
        hasBall = false
        
    }
    
    if throwInput
    {
        charge += 1
    }
    if throwInputPrev and !throwInput
    {
        with(hasBall)
        {
            motion_add(other.direction, other.speed * other.inheritance)
            motion_add(other.aimDirection, other.throwSpeedMin + ((other.charge / other.chargeMax) * (other.throwSpeedMax - other.throwSpeedMin)))
        }
        hasBall.held = false
        charge = 0
        hasBall = false
        justThrown = throwDelay
    }
}

if abs(hspeed) >= hMax
{
    hspeed = hMax * sign(hspeed)
}

if charge > chargeMax
{
    charge = chargeMax
}

throwInputPrev = throwInput

stunned -= 1
