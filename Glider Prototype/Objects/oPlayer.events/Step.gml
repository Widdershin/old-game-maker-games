if keyboard_check_pressed(ord("R"))
{
    game_restart()
}

angle = point_direction(x,y,mouse_x,mouse_y)

coefficient = 2 * pi * degtorad(360-(90-angle))
density = .00237
velocity = sqr(speed)
wing_area = sprite_get_width(sWing)

lift = (coefficient * density * velocity) / 2
show_debug_message(lift)

motion_add(direction+90,lift/10)

x = 500
y = 500

background_hspeed = -hspeed
background_vspeed = -vspeed
