rot += -hspeed*3
draw_sprite_ext(sShadow,1,x+3,y-3,1,1,rot,c_white,1)
draw_sprite(sShadow,0,x+3,y-3)
draw_sprite_ext(sprite_index,1,x,y,1,1,rot,c_white,1)
draw_sprite(sprite_index,0,x,y)

draw_set_font(fScoreBig)

draw_set_halign(fa_middle) 

draw_set_color(c_black)
draw_text(room_width/2+2,room_height-128+2,score)

draw_set_color(c_yellow)
draw_text(room_width/2,room_height-128,score)

draw_set_halign(fa_left)

/*
draw_text(5,10,"inground: "+string(inground))
draw_text(5,30,"onground: "+string(onground))
draw_text(5,50,"prevonground: "+string(prevonground))

/*
surface_set_target(darkness)
draw_set_blend_mode(bm_subtract)
draw_circle_color(x,y,199,c_white,c_black,0)
draw_set_blend_mode(bm_normal)
surface_reset_target()
draw_surface(darkness,0,0)
draw_sprite_ext(sGlow,-1,x,y,2,2,0,c_white,1)
