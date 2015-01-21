switch (active)
{
    case 0: col = c_white; break;
    case 1: col = c_red; break;
    case 2: col = c_green; break;    
} 
draw_sprite_ext(sprite_index,-1,x,y,1,1,0,col,255)
draw_set_color(c_black)
if !passleft    {draw_line(x,y,x,y+32)}
if !passright   {draw_line(x+32,y,x+32,y+32)}
if !passup      {draw_line(x,y,x+32,y)}
if !passdown    {draw_line(x,y+32,x+32,y+32)}
