mp_grid_clear_all(grid)
with(oGoblin)
{
    mp_grid_add_cell(grid, dX / t, dY / t)
}

with(oLava)
{
    mp_grid_add_cell(grid, x / t, y / t)
}

with(oWall)
{
    mp_grid_add_cell(grid, x / t, y / t)
}

if keyboard_check_pressed(ord("P"))
{
    if      newDisplay == true
        newDisplay = false
    else if newDisplay == false
        newDisplay = true
}

if room = rRealm5
    mp_grid_add_instances(grid, oDeathBall, 1)

if mouse_x != mouse_xOld || mouse_y != mouse_yOld || mouse_check_button(mb_any)
{
    showCursor = true
}
    
mouse_xOld = mouse_x
mouse_yOld = mouse_y
