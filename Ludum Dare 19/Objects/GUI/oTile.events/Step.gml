if mouse_check_button_pressed(mb_left) && instance_position(mouse_x,mouse_y,id) && mousefree
{
    newid = instance_create(mouse_x,mouse_y,buildingid)
    money -= newid.price
    newid.held = true
    mousefree = 0
}
x = view_xview + relx
y = view_yview + rely
