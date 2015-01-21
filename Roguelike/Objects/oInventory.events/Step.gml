if keyboard_check_pressed(vk_down)
{
    cursor += 1
}
if keyboard_check_pressed(vk_up)
{
    cursor -= 1
}
if cursor < 0 {cursor = equipcount-1}
if cursor > equipcount-1{cursor = 0}
/*
if filterwep
{
    if cursor < 0 {cursor = ds_list_size(invid)-1-(temp2-temp)}
    if cursor > ds_list_size(invid)-1-(temp2-temp){cursor = 0}
}
else
{
    if cursor < 0 {cursor = ds_list_size(invid)-1}
    if cursor > ds_list_size(invid)-1{cursor = 0}
}*/
if keyboard_check_pressed(ord("1"))
{
    invgive("wepwoodswrd")
}
if keyboard_check_pressed(ord("2"))
{
    invgive("armwoodhelm")
}
if keyboard_check_pressed(ord("3"))
{
    invgive("wepdiambow")
}
if keyboard_check_pressed(ord("4"))
{
    if !filterwep {filterwep = true}
    else {filterwep = false}
}
if keyboard_check(vk_enter)
{
show_message(invreadind(cursoraim))
}
