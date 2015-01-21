draw_set_color(c_white)
draw_set_font(fBasic)
temp = 0
if !newdungeon && !newchar
{
    repeat(menucount)
    {
        draw_set_valign(fa_top)
        draw_set_halign(fa_left)
        draw_text(15,temp*15+15,string(temp+1)+") "+menuitem[temp])
        temp += 1
    }
}
else if newdungeon
{
    draw_set_valign(fa_middle)
    draw_set_halign(fa_center)
    draw_text(320,320,"Generating Dungeon...")
}
else if newchar
{
    draw_text(15,15,"Welcome to the Character Creation Screen")
    if newchar = 1
    {
        draw_text(15,30,"Please enter your name.")
        draw_text(15,50,"> "+keyboard_string)
    }
    if newchar = 2
    {
        draw_set_halign(fa_left)
        draw_text(15,30,"Please choose your race.")
        draw_set_halign(fa_right)
        draw_text(625,15,name)
        draw_set_halign(fa_left)
        repeat(racecount)
        {
            STRX = string(race[temp,1])
            INTX = string(race[temp,2])
            DEXX = string(race[temp,3])
            CHAX = string(race[temp,4])
            if race[temp,1] >= 0 {STRX = "+"+STRX}
            if race[temp,2] >= 0 {INTX = "+"+INTX}
            if race[temp,3] >= 0 {DEXX = "+"+DEXX}
            if race[temp,4] >= 0 {CHAX = "+"+CHAX}
            if cursor = temp {draw_text(15,temp*20+50,"> "+race[temp,0]+" (STR"+STRX+", INT"+INTX+", DEX"+DEXX+ ", CHA"+CHAX+")")}
                        else {draw_text(15,temp*20+50,"  "+race[temp,0]+" (STR"+STRX+", INT"+INTX+", DEX"+DEXX+ ", CHA"+CHAX+")")}
            temp += 1
        }
    }
    if newchar = 3
    {
        var a;
        draw_set_halign(fa_left)
        if allocate != 1 {a = " points "} else {a = " point "}
        draw_text(15,30,"You have "+string(allocate)+a+"to allocate.")
        draw_set_halign(fa_right)
        draw_text(625,15,name)
        draw_text(625,30,race)
        draw_set_halign(fa_left)
        repeat(statcount)
        {
        if cursor = temp {draw_text(15,temp*20+50,"> "+stat[temp]+" = "+string(variable_local_get(stat[temp])))}
        else {draw_text(15,temp*20+50,"  "+stat[temp]+" = "+string(variable_local_get(stat[temp])))}
            temp += 1
        }
    }
}
