exists = joystick_exists(1)// Returns whether joystick id (1 or 2) exists.
name = joystick_name(1)// Returns the name of the joystick
axes = joystick_axes(1)// Returns the number of axes of the joystick.
buttons = joystick_buttons(1)// Returns the number of buttons of the joystick.
havePOV = joystick_has_pov(1)// Returns whether the joystick has point-of-view capabilities.
joyDirection = joystick_direction(1)// Returns the keycode (vk_numpad1 to vk_numpad9) corresponding to the direction of joystick id (1 or 2).

povAxis = joystick_pov(1)// Returns the joysticks point-of view position. This is an angle between 0 and 360 degrees. 0 is forwards, 90 to the right, 180 backwards and 270 to the left. When no point-of-view direction is pressed by the user -1 is returned.

