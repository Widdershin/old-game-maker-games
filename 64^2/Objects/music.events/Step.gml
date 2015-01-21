/*
if soundplaying = false && sounddelay < 1 && check = 8
{
sound_play(choose(cyberfire,xperion,staringsun,highscore,sector1,dreadnaught,glitched,zerowing))
sounddelay = 300
soundplaying = true
check = 0
}
if !sound_isplaying(cyberfire) check += 1
if !sound_isplaying(xperion) check += 1
if !sound_isplaying(staringsun) check += 1
if !sound_isplaying(highscore) check += 1
if !sound_isplaying(sector1) check += 1
if !sound_isplaying(dreadnaught) check += 1
if !sound_isplaying(glitched) check += 1
if !sound_isplaying(zerowing) check += 1
if check != 8 check  = 0
