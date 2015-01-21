var temp;
if mouse_check_button_pressed(mb_left) && instance_position(mouse_x,mouse_y,id) && mousefree
{
sound_play(soMenu)
    if showmenu
    {
        showmenu = false
        with(oTile){instance_destroy()}
    }
    else if !showmenu
    {
        showmenu = id
        temp = 0
        repeat(buildings)
        {
            tileid = instance_create(x+64+(46*temp),y,oTile)
            tileid.buildingid = building[temp]
            temp += 1
        }
    }
}
if !mousefree
{
showmenu = false
with(oTile){instance_destroy()}
}
x = view_xview
y = view_yview+16
