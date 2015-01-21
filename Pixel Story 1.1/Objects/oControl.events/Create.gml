globalvar tileSize, s, t, grid, lastPortal, newDisplay, debug, showCursor;
tileSize = 16
t = tileSize
s = 60
window_set_cursor(cr_none)
lastPortal = -1
grid = mp_grid_create(0, 0, 24, 24, t, t)
debug = true
newDisplay = true
showCursor = true

mouse_xOld = mouse_x
mouse_yOld = mouse_y
