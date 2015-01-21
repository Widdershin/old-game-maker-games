colord = merge_color(c_white,color,(gunid.firerate-gunid.firecool)/gunid.firerate)
draw_sprite_ext(sprite_index,-1,x,y,1,1,image_angle,c_white,255)
draw_sprite_ext(sprite_index,1,x,y,1,1,image_angle,colord,255)
