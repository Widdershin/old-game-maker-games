for (i=0; i<room_width/48; i+=1)
{
    yscale = i mod 2
    {
        if yscale = 0
        {
            yscale = -1   
        }
    }
    draw_sprite_ext(sGrinder,derp,i*48,room_height,1,yscale,0,c_white,1)
};
derp += 1
