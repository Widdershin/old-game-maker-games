event_inherited()
//Random Movement Code
if moveTimer > 0
{
    moveTimer -= 1
}

if canMove && drawMove &&  moveTimer = 0
{
    oldX = x
    oldY = y
    
    dir = irandom(3)
    
    switch(dir)
    {
        case 0: x += t; break;
        case 1: y += t; break;
        case 2: x -= t; break;
        case 3: y -= t; break;
    }
    show_debug_message("MOVED")

    drawMove = false
    interp = 0
    moveTimer = interpSpeed + irandom_range(moveTimerMin, moveTimerMax)
}
