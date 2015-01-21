
if keyboard_check_pressed(ord("R"))
{
game_restart()
}

if mouse_check_button_pressed(mb_right)
{
instance_create(mouse_x, mouse_y, oBall)

}

execute_file(object_get_name(object_index) + "Step.txt")


//game_restart()
