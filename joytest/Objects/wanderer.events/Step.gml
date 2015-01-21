x += joystick_xpos(joy);
y += joystick_ypos(joy);

x = min(max(x, 16), room_width-16);
y = min(max(y, 16), room_height-16);