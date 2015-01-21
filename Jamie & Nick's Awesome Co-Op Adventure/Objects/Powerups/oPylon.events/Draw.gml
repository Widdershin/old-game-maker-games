colord = merge_color(c_black,color,random(0.3)+0.7)
draw_sprite_ext(sprite_index,-1,x,y,1,1,image_angle,c_white,255)
draw_sprite_ext(sPylonCoil,-1,x,y,1,1,image_angle,colord,1)
//draw_sprite_ext(sprite_index,1,x,y,1,1,image_angle,colord,255)
draw_sprite_ext(sBubble,-1,x,y,1,1,image_angle,colord,0.2)
mask_index = sBubble
