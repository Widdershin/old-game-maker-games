file = "lab.cfg"
file = ini_open(file)
spr = ini_read_string("CFG","sprite",-1)
sprite0 = sprite_add(spr,1,0,0,0,0)
sprite = sprite_add(spr,1,0,0,sprite_get_width(sprite0)/2,sprite_get_height(sprite0)/2)
sprite_delete(sprite0)
sprite_index = sprite
roomw = ceil(sprite_width/32)
roomh = ceil(sprite_height/32)
draw = 0


