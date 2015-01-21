globalvar sp, splus, test;
sp = 0.1
splus = 0.001
timers = 120// + irandom(120)
timer = timers
background_hspeed[0] = -0.2
background_hspeed[1] = -0.4
background_hspeed[2] = -0.6
background_hspeed[3] = -0.8
rain = true
cursor_sprite = sCursor
prevtime = 0
test = false

globalvar p1pickup, p2pickup;
p1pickup[0,0] = 1

p1pickup[1,0] = oShotgun
p1pickup[1,1] = "S"

p2pickup[0,0] = 0

p2pickup[1,0] = oTurret
p2pickup[1,1] = "T"

p2pickup[2,0] = oPylon
p2pickup[2,1] = "B"

instance_create(200,200,oPowerup)
