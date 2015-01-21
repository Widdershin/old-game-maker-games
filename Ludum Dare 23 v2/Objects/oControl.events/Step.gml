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

if room = rRealm5
    mp_grid_add_instances(grid, oDeathBall, 1)



