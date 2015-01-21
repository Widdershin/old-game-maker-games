success = 0
if !variable_local_exists("prevroomx")
{
prevroomx = 0
prevroomy = 0
}
repeat(argument0)
{
    roomw = choose(5,7,9)
    roomh = choose(5,7,9)
    roomx = irandom((room_width/ts)-roomw)
    roomy = irandom((room_height/ts)-roomh)
    a = 0 //Horizontal Placement
    b = 0 //Vertical Placement
    free = true
    repeat(roomh * roomw) //Checks if the intended place is free
    {
        if instance_position((roomx*ts)+(a*ts),(roomy*ts)+(b*ts),oFloor) {free = false}
        a += 1
        if a = roomw
        {
            a = 0
            b += 1         
        }
    }

    a = 0 //Horizontal Placement
    b = 0 //Vertical Placement
    if free
    {
        success += 1
        repeat(roomh*roomw) //Places The Room
        {
            if a = 0 && b = 0
            {
                mp_grid_add_cell(gridid,a+roomx,b+roomy)
            }
            if  a = 0 && b = roomh-1
            {
                mp_grid_add_cell(gridid,a+roomx,b+roomy)
            }
            if b = 0 &&  a = roomw-1
            {
                mp_grid_add_cell(gridid,a+roomx,b+roomy)
            }
            if a = roomw-1 && b = roomh-1
            {
                mp_grid_add_cell(gridid,a+roomx,b+roomy)
            }
            if a = floor(roomw/2) && b = floor(roomh/2)
            {
                center = instance_create((roomx*ts)+(a*ts),(roomy*ts)+(b*ts),oFloor)
                oControl.x = center.x
                oControl.y = center.y
                if !instance_exists(oPlayer) {instance_create(center.x,center.y,oPlayer)}
            }
            else if a = 0 || b = 0 || a = roomw-1 || b = roomh-1
            {
                instance_create((roomx*ts)+(a*ts),(roomy*ts)+(b*ts),oWall)
            }
            else
            {
                instance_create((roomx*ts)+(a*ts),(roomy*ts)+(b*ts),oFloor)
            }
            a += 1
            if a = roomw
            {
                a = 0
                b += 1         
            }
        }
    if prevroomx != 0
    {
    genlink(center.x,center.y,prevroomx,prevroomy)
    }
    prevroomx = center.x
    prevroomy = center.y
    }
}
if success && debug
{
sendmsg(string(success)+" out of "+string(argument0)+" rooms successfully generated.")
}
if success != argument0 {gendungeon(argument0-success)}
if success = 0 {fail += 1}
else {fail = 0}
if fail > 10 {exit}
//if success = argument0 {}
//sendmsg("W:"+string(roomw)+", H:"+string(roomh)+", X:"+string(roomx)+", Y:"+string(roomy))
