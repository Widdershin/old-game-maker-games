tarx = x
tary = y
tartry = false
//Getting my movement prediction on
if keyboard_check_pressed(vk_left)
{
    tarx -= ts
    tartry = true
}
else if keyboard_check_pressed(vk_right)
{
    tarx += ts
    tartry = true    
}
if keyboard_check_pressed(vk_up)
{
    tary -= ts
    tartry = true
}
else if keyboard_check_pressed(vk_down)
{
    tary += ts
    tartry = true
}

//Checking if I can move to the predicted place then doing it
if place_free(tarx,tary) && canmove && (tarx != x || tary != y)
{
    x = tarx
    y = tary
    step()
}

//Opening me some sweet doors
doorid = instance_position(tarx,tary,oDoor)
if doorid && canmove
{
    doorid.open = true
}
//Attacking An Enemy
enemyid = instance_position(tarx,tary,pEnemy)
if enemyid && canmove  && (tarx != x || tary != y)
{
    attack(enemyid)
    step()
}
//Doing some commmands
//Closing Doors
if keyboard_check_pressed(ord("C")) && canmove
{
    canmove = false
    tryopen = true
    sendmsg("Close what?")
}
opendoorid = instance_position(tarx,tary,oDoorOpen)
if opendoorid && tryopen
{
    opendoorid.open = false
    endaction("C",1)
    //show_message("I tried to close "+string(opendoorid))
}
else if tryopen && tartry {endaction("C",2)}
if keyboard_check_pressed(vk_enter) && !canmove
{
    if tryopen {endaction("C",0)}
}
instance_deactivate_object(pTile)
instance_activate_region(view_xview[0]-ts*2, view_yview[0]-ts*2, view_wview[0]+ts*2, view_hview[0]+ts*3, true);
if keyboard_check_pressed(ord("Z")){step()}
//Array Crasher
/*
repeat(32000)
{
    sendmsg("Hello World")
}
*/
