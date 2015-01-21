if mouse_check_button_pressed(mb_left)
{
    stop = false
    with(oBox)
    {
        if mouseOver
        {
            other.stop = true
        }
    }
    if !stop
    {
        pan = true
        panX = mouse_x
        panY = mouse_y
    }
}



if pan
{
    newX = round((mouse_x - panX) * panSens)
    newY = round((mouse_y - panY) * panSens)
    with(oBox)
    {
        x += other.newX
        y += other.newY
    }
    panX = mouse_x
    panY = mouse_y

}

if mouse_check_button_released(mb_left)
{
    pan = false
}

if mouse_check_button_pressed(mb_middle) and !keyboard_check(vk_control)
{
    instance_create(mouse_x, mouse_y, oStatement)
}


mp_grid_clear_all(grid)
with(oStatement)
{
    mp_grid_add_rectangle(grid, x + wDetail, y, (x + width), (y + height))
}
with(oResponse)
{
    mp_grid_add_rectangle(grid, x, y, (x + width), (y + height))
    l = x + width - 15
    t = y + height / 2 - 8 
    r = l + 16
    b = t + 16
    mp_grid_clear_rectangle(grid, l, t, r, b)
}
mp_grid_add_instances(grid, oAddButton, 0)

if keyboard_check(vk_control) and keyboard_check_pressed(ord("S"))
{
    globalvar file;
    fileName = get_string("Filename:", "dialogue.txt")
    file = file_text_open_write(fileName)
    count = 0
    with(oStatement)
    {
        index = other.count
        other.count += 1   
    }
    with(oStatement)
    {
        file_text_write_string(file, "dStatementAdd("+ string(index) + ", " + '"' + text + '", ' + string(x) + ", " + string(y) + ")")
        file_text_writeln(file)
        for(i = 0; i < ds_list_size(responseList); i += 1)
        {
            response = ds_list_find_value(responseList, i)
            if response.link != -1
            {
                linkString = string(response.link.index)
            }
            else
            {
                linkString = "-1"
            }
            
            file_text_write_string(file,"dResponseAdd(" + string(index) + ", " + '"' + response.text + '"' + ", " + linkString + ")")
            file_text_writeln(file)
        }

        file_text_writeln(file)
    }
    file_text_close(file)
}


if keyboard_check(vk_control) and keyboard_check_pressed(ord("O"))
{
    with(oBox)
    {
        instance_destroy();
    }
    with(oAddButton)
    {
        instance_destroy()
    }
    globalvar file;
    fileName = get_string("Filename:", "dialogue.txt")
    execute_file(fileName)
    
    with(oResponse)
    {
        if link != -1
        {
            link = statementList[link]
        }
    }
    
    updatePathing = true
}
