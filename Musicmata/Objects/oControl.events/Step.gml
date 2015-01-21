if keyboard_check_pressed(vk_space)
{
    if !run     
    {
        game_save("temp.sav")
        run = true
    }
    else if run 
    {
        run = false
        game_load("temp.sav")
    }
}
if keyboard_check_pressed(vk_up)
{
    instrument += 1
    show_debug_message(instrument)
}
if keyboard_check_pressed(vk_down)
{
    instrument -= 1
    show_debug_message(instrument)
}
if !run
{
    tile = instance_position((mouse_x div 32)*32,(mouse_y div 32)*32,oTile)
    if mouse_check_button_pressed(mb_left)
    {
        if !tile
        {
            instance_create((mouse_x div 32)*32,(mouse_y div 32)*32,oTile)
        }
        else
        {
            with(tile)
            instance_destroy()
        }
    }
    if mouse_check_button_pressed(mb_right) && tile
    {
        tile.direction -= 90
    }
    if keyboard_check_pressed(ord("R"))
    {
        game_restart()
    }
}
if tick = 0
{
    with(oTile)
    {
        xx = x
        yy = y
        x = -10000
        y = -10000
        tile = instance_position(xx,yy,oTile)
        if tile 
        {
            direction += 90
            tile.direction += 90
        }
        x = xx
        y = yy
        
        tarx = x+lengthdir_x(32,direction)
        tary = y+lengthdir_y(32,direction)
        
        if tarx > room_width-32 || tarx < 0 //horizontal collision
        {
            direction -= 180
            surface_set_target(notes)
            draw_sprite(sNote,-1,x,y)
            surface_reset_target()
            tarx = x+lengthdir_x(32,direction)
            tary = y+lengthdir_y(32,direction)
            x = tarx
            y = tary
            pitch = (64/tileh)*((room_height-y)/32)+32
            midi_note_play_timed(0,128,instrument,pitch,255,1000)            
        }
        else if tary > room_height-32 || tary < 0 //vertical collision
        {
            direction -= 180
            surface_set_target(notes)
            draw_sprite(sNote,-1,x,y)
            surface_reset_target()
            tarx = x+lengthdir_x(32,direction)
            tary = y+lengthdir_y(32,direction)
            x = tarx
            y = tary
            pitch = (64/tilew)*(x/32)+32
            midi_note_play_timed(1,128,instrument,pitch,255,1000)   
        }
        else
        {
            x = tarx
            y = tary
        }
    }
    tick = tickcount
}
if run tick -= 1
