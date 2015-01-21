if keyboard_check_pressed(vk_space)
{
    instance_create(mouse_x, mouse_y, oUnit)
}

if mouse_check_button_pressed(mb_left)
{
    if !keyboard_check(vk_shift)
    {
        oUnit.selected = false
        ds_list_clear(unitList)
    }
    
    boxSelect = true
    boxSelectX = mouse_x
    boxSelectY = mouse_y
}

if mouse_check_button(mb_left)
{
    boxSelectX2 = mouse_x
    boxSelectY2 = mouse_y
}

if mouse_check_button_released(mb_left)
{
    boxSelect = false
    
    if boxSelectX2 < boxSelectX
    {
        var a;
        a = boxSelectX
        boxSelectX = boxSelectX2
        boxSelectX2 = a
    }
    
    if boxSelectY2 < boxSelectY
    {
        var a;
        a = boxSelectY
        boxSelectY = boxSelectY2
        boxSelectY2 = a
    }
    
    with(oUnit)
    {
        if x >= other.boxSelectX && x <= other.boxSelectX2 && y >= other.boxSelectY && y <= other.boxSelectY2
        {
            selected = true
            ds_list_add(other.unitList, id)
        }
    }
}


if mouse_check_button_pressed(mb_right)
{
    pointX = mouse_x
    pointY = mouse_y
    unitCount = ds_list_size(unitList)
    
    for(i = 0; i < unitCount ; i += 1)
    {
        unit = ds_list_find_value(unitList, i)
        unit.targetX = pointX + lengthdir_x(unitCount * 3, i * (360 / unitCount))
        unit.targetY = pointY + lengthdir_y(unitCount * 3, i * (360 / unitCount))
    }
}
