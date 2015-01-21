targX = (x - mouse_x)
targY = (y - mouse_y)
targL = sqrt(targX * targX + targY * targY)
targX = targX / targL
targY = targY / targL

velY = velY + 0.1

x = x + velX
y = y + velY

Ekin = Ekin + velY


if keyboard_check(ord("R"))
{
    game_restart()
}
