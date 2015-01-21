globalvar deathscreen;
//sleep(5000)
arg = argument0
deathscreen = sprite_create_from_screen(arg.x-64,arg.y-64,128,128,0,0,0,0)
sprite_save(deathscreen,0,"lulz.png")
//highscore_show(sp*100)
room_goto(room4)
//game_restart()
