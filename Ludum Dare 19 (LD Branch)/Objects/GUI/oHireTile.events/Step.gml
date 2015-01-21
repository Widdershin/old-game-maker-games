if mouse_check_button_pressed(mb_left) && instance_position(mouse_x,mouse_y,id) && mousefree
{
    newid = instance_create(oSpawn.x+16,oSpawn.y+16,staffid)
    //money -= newid.price
    //newid.held = true
    //mousefree = 0
}
