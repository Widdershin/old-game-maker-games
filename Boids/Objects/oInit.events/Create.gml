globalvar redlow, redhigh, greenlow, greenhigh, bluelow, bluehigh, trails;
if !file_exists("boidfig.ini")
{
    ini_open("boidfig.ini")
    ini_write_real("colors","redlow",127.5)
    ini_write_real("colors","redhigh",255)
    ini_write_real("colors","greenlow",0)
    ini_write_real("colors","greenhigh",0)
    ini_write_real("colors","bluelow",0)
    ini_write_real("colors","bluehigh",0)
    ini_write_real("effects","trails",1)
    ini_close()
}
ini_open("boidfig.ini")
redlow    = ini_read_real("colors","redlow",0)
redhigh   = ini_read_real("colors","redhigh",255)
greenlow  = ini_read_real("colors","greenlow",0)
greenhigh = ini_read_real("colors","greenhigh",255)
bluelow   = ini_read_real("colors","bluelow",0)
bluehigh  = ini_read_real("colors","bluehigh",255)
trails    = ini_read_real("effects","trails",1)
ini_close()

room_set_width(rMain,display_get_width())
room_set_height(rMain,display_get_height())
room_goto(rMain)


