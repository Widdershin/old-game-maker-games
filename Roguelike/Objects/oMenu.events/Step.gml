if keyboard_check_pressed(ord("1"))
{
    newdungeon = true
    screen_redraw()
    screen_refresh()
    room_goto(rDungeon)
}
if keyboard_check_pressed(ord("2"))
{
    if lighting = false{lighting = true}
    else {lighting = false}    
}
if lighting = false
{
    menuitem[1] = "FOV Disabled"
}
else
{
    menuitem[1] = "FOV Enabled"
}

if keyboard_check_pressed(ord("3"))
{
    if debug = false{debug = true}
    else {debug = false}    
}
if debug = false
{
    menuitem[2] = "Debug Disabled"
}
else
{
    menuitem[2] = "Debug Enabled"
}
if keyboard_check_pressed(ord("4"))
{
    room_goto(rCombat)
}
if keyboard_check_pressed(ord("5"))
{
    newchar = true
    keyboard_string = ""
}
if newchar
{
    if newchar = 3
    {
        if keyboard_check_pressed(vk_down)
        {
            cursor += 1
        }
        if keyboard_check_pressed(vk_up)
        {
            cursor -= 1
        }
        if cursor < 0 {cursor = statcount-1}
        if cursor > statcount-1{cursor = 0}
        
        if keyboard_check_pressed(vk_right) && allocate > 0
        {
            allocate -= 1
            execute_string(stat[cursor]+" += 1")
            stat += 1
        }
        if keyboard_check_pressed(vk_left) && variable_local_get(stat[cursor]) > 10
        {
            allocate += 1
            execute_string(stat[cursor]+" -= 1")
        }
        if keyboard_check_pressed(vk_enter)
        {
        attribid = instance_create(x,y,oAttrib)
        attribid.STR = STR
        attribid.INT = INT
        attribid.DEX = DEX
        attribid.CHA = CHA
        attribid.name = name
        attribid.race = race
        room_goto(rCombat)
        }
    }   
    if newchar = 2
    {
        if keyboard_check_pressed(vk_enter) && newchar = 2
        {
            race = race[cursor,0]
            STR += race[cursor,1]
            STRY = STR
            INT += race[cursor,2]
            INTY = INT
            DEX += race[cursor,3]
            DEXY = DEX
            CHA += race[cursor,4]
            CHAY = CHA
            allocate = ceil(INT/2)
            newchar = 3
        }
        if keyboard_check_pressed(vk_down)
        {
            cursor += 1
        }
        if keyboard_check_pressed(vk_up)
        {
            cursor -= 1
        }
        if cursor < 0 {cursor = racecount-1}
        if cursor > racecount-1{cursor = 0}
        
        if keyboard_check_pressed(vk_right)
        {
        }
        if keyboard_check_pressed(vk_left)
        {
        }
    }
    if keyboard_check_pressed(vk_enter) && newchar = 1
    {
        name = keyboard_string
        newchar = 2
    }
}
if keyboard_check_pressed(ord("6")) {room_goto(rInventoryTest)}
if keyboard_check_pressed(ord("R")) && !newchar{game_restart()}

