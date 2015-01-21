if keyboard_check_pressed(vk_pageup){hpoffset -= 5}
if keyboard_check_pressed(vk_pagedown){hpoffset += 5}
if keyboard_check_pressed(vk_home){sendmsg(string(hpoffset))}

