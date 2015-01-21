event_inherited()

if mouse_check_button_pressed(mb_left)
{
    if mouseOver
    {
        held = true
        heldX = mouse_x - x
        heldY = mouse_y - y
    }
    if instance_position(mouse_x, mouse_y, addButton)
    {
        response = instance_create(x, y + totalHeight, oResponse)
        ds_list_add(responseList, response)
    }
}

if mouse_check_button_pressed(mb_middle) and keyboard_check(vk_control)
{
    if mouseOver
    {
        with(oResponse)
        {
            if link == other.id
            {
                link = -1
            }
        }
        with(addButton)
        {
            instance_destroy()
        }
        for (i = 0; i < ds_list_size(responseList); i += 1)
        {
            with(ds_list_find_value(responseList, i))
            {
                instance_destroy()
            }
        }
        instance_destroy()
    }
    for (i = 0; i < ds_list_size(responseList); i += 1)
    {
        with(ds_list_find_value(responseList, i))
        {
            if mouseOver
            {
                ds_list_delete(other.responseList, other.i)
                instance_destroy()
            }
        }
    }
}

if mouse_check_button_released(mb_left)
{
    held = false
}

if held
{
    x = mouse_x - heldX
    y = mouse_y - heldY
    updatePathing = true
}


totalHeight = height
for (i = 0; i < ds_list_size(responseList); i += 1)
{
    response = ds_list_find_value(responseList, i)
    if response 
    {
        response.x = x
        response.y = y + totalHeight
        totalHeight += response.height
    }
}


addButton.x = x
addButton.y = y + totalHeight


