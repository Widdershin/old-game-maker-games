for(i = 0; i < w; i += 1)
{
    for(j = 0; j < h; j += 1)
    {
        draw_sprite(world[i,j],-1,w*ts,h*ts)
    }
}
