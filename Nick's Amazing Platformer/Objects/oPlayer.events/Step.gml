if keyboard_check_pressed(ord("R")){game_restart()}
if place_free(x,y+2){gravity = 0.1}
else {
gravity = 0
move_contact_solid(270,2)
vspeed = 0
}

