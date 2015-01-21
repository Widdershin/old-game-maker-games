globalvar ts, minimap;
ts = 32
minimap = surface_create(room_height/ts,room_width/ts)
fail = 0
instance_create(2,-157,oMessages)
view_visible[1] = true
view_yview[1] = -160
view_wview[1] = 640
view_hview[1] = 160
view_yport[1] = 480
if room = rDungeon
{
    gengrid()
    gendungeon(45)
}
grid = false
point = false
aigrid()
