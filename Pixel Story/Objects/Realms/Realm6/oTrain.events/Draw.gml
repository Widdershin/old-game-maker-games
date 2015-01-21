switch(moveDir)
{
    case 1: sprite_index = sTrain2; break;
    case 3: sprite_index = sTrain2; break;
    default: sprite_index = sTrain; 
}
draw_sprite_ext(sprite_index, 0, x, y, 1, 1, 0, c_white, 1)

hitTime -= 1
draw_sprite_ext(sprite_index,1,x,y,1,1,0,c_red,hitTime/15)

