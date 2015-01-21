if mouse_check_button_pressed(mb_left)
{
    switch(tool)
    {
        case toolNewRoom: 
        newRoom = true
        newRoomX1 = mouse_x div T * T
        newRoomY1 = mouse_y div T * T
        break;
        
        case toolTestMessage:
        
        break;
            
    }
}

if mouse_check_button(mb_left)
{
    switch(tool)
    {
        case toolNewRoom:
        newRoomX2 = ceil(mouse_x / T) * T
        newRoomY2 = ceil(mouse_y / T) * T
        newRoomW = (newRoomX2 - newRoomX1) / T
        newRoomH = (newRoomY2 - newRoomY1) / T

        newRoomValid = false
        if newRoomW >= 3 and newRoomH >= 3
        {
            newRoomValid = true
        }

        break;
    }
}

if mouse_check_button_released(mb_left)
{
    switch(tool)
    {
        case toolNewRoom:
        newRoomW = (newRoomX2 - newRoomX1) / T
        newRoomH = (newRoomY2 - newRoomY1) / T
        
        if newRoomValid
        {
            for(i = 0; i < newRoomW; i += 1)
            {
                for(j = 0; j < newRoomH; j += 1)
                {
                    if i == 0 || j == 0 || i == newRoomW - 1 || j == newRoomH - 1
                    {
                        newObj = oWall
                    }
                    else
                    {
                        newObj = oFloor
                    }
                    instance_create(newRoomX1 + i * T, newRoomY1 + j * T, newObj)
                }
            }
        }
        
        newRoom = false
        break;
    }
}


mouse_vx = mouse_x - view_xview
mouse_vy = mouse_y - view_yview

if mousePan
{
    view_xview += panX - mouse_vx
    view_yview += panY - mouse_vy 
    panX = mouse_vx
    panY = mouse_vy
}

if mouse_check_button_pressed(mb_middle)
{
    panX = mouse_vx
    panY = mouse_vy
    mousePan = true
}

if mouse_check_button_released(mb_middle)
{
    mousePan = false
}




