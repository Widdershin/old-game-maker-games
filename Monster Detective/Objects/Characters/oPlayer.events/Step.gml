event_inherited()


if inTransition
{
    if inTransition.open && inTransition.animDone
    {
        x = inTransition.xTarget
        y = inTransition.yTarget
        dx = x
        dy = y
        inTransition.open = false
        rTarget = inTransition.rTarget
        inTransition = false
        
        transition_kind = 21
        room_goto(rTarget)
        
        
    }
}


if canMove && drawMove && !inDialogue && !inTransition
{
    oldX = x
    oldY = y
    
    moveX = 0
    moveY = 0
    
    if keyboard_check(upKey)
    {
        moveY -= t
    }
    if keyboard_check(downKey)
    {
        moveY += t
    }
    if keyboard_check(leftKey)
    {
        moveX -= t
    }
    if keyboard_check(rightKey)
    {
        moveX += t
    }
    
    door = instance_place(x + moveX, y + moveY, oDoor)
    if door
    {
        door.open = true
        inTransition = door
    }
    
    NPC = instance_place(x + moveX, y + moveY, pNPC)
    if NPC
    {
        inDialogue = true
        dialogueInst = NPC
    }
    if !instance_place(x + moveX, y + moveY, pSolid)
    {
        x += moveX
        y += moveY
    }
    
    if x != oldX || y != oldY
    {
        drawMove = false
        interp = 0
    }
}

