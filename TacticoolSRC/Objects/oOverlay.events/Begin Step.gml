x = floor(mouse_x/48)*48
y = floor(mouse_y/48)*48
hoverID = instance_position(x,y,oTile)
hoverID2 = instance_position(x,y,oEnemy)
if hoverID != -4
{
    if hoverID.object_index = roomPath || hoverID.object_index = oEmpty
    {
        image_index = 1
    }
    if hoverID.object_index = roomWall
    {
        image_index = 0
    }
}
