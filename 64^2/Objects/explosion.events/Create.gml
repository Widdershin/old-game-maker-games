fade = 36
instance_create(x,y,char)
instance_create(x+1,y,char)
instance_create(x+2,y,char)
instance_create(x,y+1,char)
instance_create(x+1,y+1,char)
instance_create(x+2,y+1,char)
instance_create(x,y+2,char)
instance_create(x+1,y+2,char)
instance_create(x-1,y+2,char)
instance_create(x-1,y+1,char)
instance_create(x-2,y+1,char)
instance_create(x-1,y,char)
instance_create(x-2,y,char)
instance_create(x-2,y-1,char)
instance_create(x-1,y-1,char)
instance_create(x-1,y-2,char)
instance_create(x,y-1,char)
instance_create(x,y-2,char)
instance_create(x+1,y-1,char)
instance_create(x+1,y-2,char)
instance_create(x+2,y-1,char)


sound = choose(explosion1,explosion2,explosion3)
sound_pan(sound,((x-player.x)/65))
sound_play(sound)