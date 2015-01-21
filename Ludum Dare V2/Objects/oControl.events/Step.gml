if !mp
{
    sound_loop(roomMusic)
    mp = true
}

// controls
if keyboard_check_pressed(ord("R")) {game_restart()}
if keyboard_check_pressed(ord("E")) {instance_create(x,y,oRobotArm)}
if keyboard_check_pressed(ord("W")) {wave(oRobot,5)}

// grab pick up
mouse_id = instance_position(mouse_x,mouse_y,oEnemy)
if mouse_id mouse_obj = mouse_id.object_index
if mouse_check_button_pressed(mb_left) && mouse_id != -4
{
    if mouse_id.state = 1 || mouse_id.state = 2
    {
        grabbed = true
        grabbedID = mouse_id
        sound_play(sPickup)
    }
}

// grab drop
if mouse_check_button_released(mb_left) && grabbed = true
{
    if oOverlay.hoverID.object_index = roomWall
    {
        grabbedID.state = 2 //puts down a turret
    }
    else
    {
        grabbedID.state = 1 //puts down a floaty guy
    }
    if oOverlay.hoverID2 && oOverlay.hoverID2 != grabbedID
    {   
        merge(oOverlay.hoverID2,grabbedID)
    }
    grabbedID.x = (floor(mouse_x/48)*48)+24 //aligns to grid
    grabbedID.y = (floor(mouse_y/48)*48)+24
    grabbed = false
    sound_play(sDrop)
}

if grabbed = true
{
    grabbedID.x = mouse_x
    grabbedID.y = mouse_y
    grabbedID.firenext = grabbedID.firedelay
}

wavecheck(room)
if time = 30 || time = 30+timeunit {show_message("BITCH")}
