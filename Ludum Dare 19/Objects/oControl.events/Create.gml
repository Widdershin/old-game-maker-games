xx = 0
yy = 0
/*repeat(room_height/32)
{
    repeat(room_width/32)
    {
        instance_create(xx*32,floor(yy)*32,oGrass)
        xx += 1
    }
    yy += 1
    xx = 0
}*/
globalvar money, science, rawtime, hour, minute, c1, c2, c3, mousefree, timescale;
money = 1200
science = 0
rawtime = 7*60
timescale = 4
clipboard = false
mousefree = 1
instance_create(0,0,oBar)
c1 = make_color_rgb(238,232,206)
c2 = make_color_rgb(210,202,181)
c3 = make_color_rgb(125,113,79)
window_set_cursor(cr_none)
cursor_sprite = sCursor
pathgrid()
instance_create(0,0,oBar)
instance_create(0,16,oBuildButton)
instance_create(32,16,oPathButton)
instance_create(0,48,oHireButton)
instance_create(32,48,oContractButton)
instance_create(0,80,oTimescale)
//sound_loop(sbMain)
view_yview = 1344

