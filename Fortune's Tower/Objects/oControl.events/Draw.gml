for (i=1; i<=curRow; i+=1)
{    
    draw_set_color(c_dkgray)    
    if i = curRow
    {
        draw_set_color(c_black)
        if rowMultiple[i]
        {
            draw_set_color(c_yellow)
        }    
    }
    draw_text(ox+((i+9)*sx),oy+(i*sy)+6,rowValue[i])
    if rowMultiple[i]
    {
        draw_sprite(sStar,0,ox+((i+9)*sx)+12,oy+(i*sy)-8)
        draw_sprite(sStar,1,ox+((i+9)*sx)+12,oy+(i*sy)-8)
    }    
};

