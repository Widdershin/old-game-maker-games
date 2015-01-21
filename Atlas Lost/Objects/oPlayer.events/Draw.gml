
for (i = 0; i < 2; i += 1)
{
    if i = 0
    {
        hipsX = x
        hipsY = y + 10
    }
    else
    {
        hipsX = x - 3
        hipsY = y + 11
    }
    ikDist = mouse_y - hipsY
    
    ikMin = 0
    ikMax = 30
    
    ikMinAngle = 0
    ikMaxAngle = 70
    
    if (ikDist < ikMax)
    {
        ikRatio = (ikDist - ikMin) / (ikMax - ikMin)
        if (ikDist < ikMin)
        {
            ikRatio = 0
        }
    }
    else ikRatio = 1
        
    legRot = ikMaxAngle * (1 - ikRatio)
    leg2Rot = -legRot
    draw_sprite_ext(sLeg, -1, hipsX, hipsY, 1, 1, legRot, c_white, 1)
    
    kneesX = hipsX + lengthdir_x(14, legRot - 90)
    kneesY = hipsY + lengthdir_y(14, legRot - 90)
    draw_sprite_ext(sFoot, -1, kneesX, kneesY, 1, 1, leg2Rot, c_white, 1)
}


draw_sprite(sprite_index, -1, x, y)

shoulderX = x - 4
shoulderY = y - 7

armRot = point_direction(x, y, mouse_x, mouse_y) + 90
//armRot = 0


elbowX = shoulderX + lengthdir_x(11, armRot - 90)
elbowY = shoulderY + lengthdir_y(11, armRot - 90)
draw_sprite_ext(sForeArm, -1, elbowX, elbowY, 1, 1, armRot, c_white, 1)
draw_sprite_ext(sArm, -1, shoulderX, shoulderY, 1, 1, armRot, c_white, 1)



draw_text(mouse_x + 10, mouse_y, string(shoulderX - mouse_x) + ', ' + string(shoulderY - mouse_y))
//draw_line(0,mouse_y,room_width,mouse_y)

