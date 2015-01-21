globalvar mouse_id, wavecount, time, timenext, timeprev, timenextprev, nextwave, timef, timeunit, dif;
grabbed = false
mouse_id = mouse_id = instance_position(mouse_x,mouse_y,oEnemy)
instance_create(x,y,oOverlay)
time = 0
timef = time
timenext = 5
timeprev = time
timenextprev = 0
mp = false
nextwave = "oLabRat:3:30"
timeunit = (1/32)
room_caption = "Tacticool"
wavecount = 0
instance_create(view_xview[1],view_yview[1],oEmpty)
instance_create(view_xview[1]+528,view_yview[1],oNextWave)
dif = 1
