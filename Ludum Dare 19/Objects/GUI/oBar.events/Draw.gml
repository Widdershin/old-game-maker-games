draw_sprite(sprite_index,-1,x,y)
draw_set_font(fBasic)
//draw_set_color(c1)
//draw_rectangle(x+1,y+15,x+40,y+15,0)
draw_set_color(c3)
draw_sprite(sMoney,-1,x+2,y+1)
draw_text(x+18,y+1,money)
draw_sprite(sScience,-1,x+60,y+1)
draw_text(x+76,y+1,ceil(science))
draw_sprite(sTime,-1,x+118,y+1)
if string_length(string(hour)) = 1 {ahour = "0"+string(hour)} else {ahour = string(hour)}
if string_length(string(minute-1)) = 1 {aminute = "0"+string(minute-1)} else {aminute = string(minute-1)}
draw_text(x+134,y+1,ahour+":"+aminute)


