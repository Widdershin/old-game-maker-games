draw_set_color(c_black)
draw_set_alpha(0.4)
draw_rectangle(0,0,room_width,room_height,0)
draw_set_alpha(1)
draw_sprite(sprite_index,-1,x,y)
draw_set_font(fScoreBig)
draw_set_color(c_yellow)
draw_text(x+8,y+3,keyboard_string)
draw_set_font(fScoreSmall)
draw_text(x+14,y-17,"ENTER YOUR NAME")

draw_set_font(fScoreBig)

draw_set_halign(fa_middle) 

draw_set_color(c_yellow)
draw_text(room_width/2,room_height-128,score)

draw_set_halign(fa_left)

