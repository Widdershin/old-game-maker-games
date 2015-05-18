JOY DLL - BRINGS YOU JOY
Made by Cellulose Man in a few hours at Teknogames' house
	(And later revisited for bugfixing reasons)

	-= Version 1.1 =-


Features:

-Lets you use as many joysticks as you want in Game Maker!

-Lets you use unlimited axes and buttons, multiple hats, and trackballs!

-Can be added to existing projects without going back over code!

-Lets you detect joysticks that are connected and disconnected while
	the game is playing.
	
-Short function names, easier to code in!

-Builtin functions to check button presses and releases!

Note that this does NOT fix the "Joystick lag bug" in Game Maker games.
	(which affects GM games regardless of whether they use joystick code)
	

What you need to do:
-Add joydll.dll and SDL.dll to your game's folder
	(these will need to be packaged with your game)
-Import the 'joydll.gml' and 'joydll-transparent.gml' script packs.
-Make sure you call joy_init() at the start of your game.
-Make sure you call joy_update() every step (probably in begin step)


...And that's it!


The joystick_(...) functions in joydll-transparent.gml do what Game Maker
joystick functions normally do, except in the case of joystick_direction,
where the behavior is very slightly different.



The joy_(...) functions in joydll.gml, unlike the Game Maker ones, number    
joysticks and buttons starting at zero rather than one (!) and do as follows:

joy_init() - must be called at the beginning of the game.

joy_update() - must be called each step.
	(returns true when one of the joysticks has been disconnected)
	
joy_count() - returns the number of joysticks.

joy_name(id) - get the name of a joystick or gamepad.
joy_find() - refresh the list of connected joysticks.
	(to find newly connected ones and get rid of lost ones)
	
joy_hi() - returns a useless string, an artifact of DLL testing.

joy_axes(id) - get the number of axes on a joystick or gamepad.

joy_buttons(id) - get the number of buttons on a joystick or gamepad.

joy_hats(id) - get the number of POV hats on a joystick or gamepad.

joy_balls(id) - get the number of trackballs on a joystick or gamepad.

joy_axis(id, axis) - get the value of an axis (-1 to 1).

joy_x(id) - get the first axis.
joy_y(id) - get the second axis.
joy_z(id) - get the third axis.
joy_r(id) - get the fourth axis.
joy_u(id) - get the fifth axis.
joy_v(id) - get the sixth axis.

joy_button(id, button) - check a button. (numbered starting at 0)
joy_pressed(id, button) - check if a button was pressed this frame.
joy_released(id, button) - check if a button was released this frame.

joy_hat(id, hat) - get a hat's position, similar to joystick_get_pov.
joy_hat_x(id, hat) - get a hat's x-position as though it was an axis.
joy_hat_y(id, hat) - get a hat's y-position as though it was an axis.

joy_ball_x(id, ball) - Get trackball X-motion (-32768 to 32768).
joy_ball_y(id, ball) - Get trackball Y-motion (-32768 to 32768).

joy_list() - Show a popup listing all joysticks.

(note that not specifying an axis, hat, ball or button index defaults to zero.
    this can be convenient sometimes.  After all, how often do we use a second hat?)


joytest.gmk (note the library is Game Maker 6 friendly) lets you see all
connected joysticks.  It visualizes axes, buttons and hats, but not trackballs.
Use it like so:

space - refresh joysticks to see newly connected or lost ones
control - show a popup listing of joysticks
[mess with joystick] - see results on screen



LICENSE (it's the Zlib license, so you can use this in commercial games)


  Copyright (C) 2010 Evan Balster

  This software is provided 'as-is', without any express or implied
  warranty.  In no event will the author be held liable for any damages
  arising from the use of this software.

  Permission is granted to anyone to use this software for any purpose,
  including commercial applications, and to alter it and redistribute it
  freely, subject to the following restrictions:

  1. The origin of this software must not be misrepresented; you must not
     claim that you wrote the original software. If you use this software
     in a product, an acknowledgment in the product documentation would be
     appreciated but is not required.
  2. Altered source versions must be plainly marked as such, and must not be
     misrepresented as being the original software.
  3. This notice may not be removed or altered from any source distribution.