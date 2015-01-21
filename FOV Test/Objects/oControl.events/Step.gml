if keyboard_check_pressed(ord("R"))
{
game_restart()
}
if keyboard_check_pressed(vk_space)
{
sendmsg(choose("TEST","TEST2"))
view_angle[0] += 10
}
if keyboard_check_pressed(ord("G"))
{
    if !grid {grid = true}
    else if grid {grid = false}
}
if keyboard_check_pressed(ord("M"))
{
ratio = view_wview/view_hview
view_hview = room_height
view_wview = room_width
view_wview *= ratio
}
