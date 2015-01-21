var str;
draw_set_font(fBasic)
for (i=frame; i<60; i+=1)
{
        if keyframe[i]
        {
            draw_set_color(c_red)
        }
        else
        {
            draw_set_color(c_black)
        }
        ii = string(i)
        if string_length(string(i)) = 1 {ii = "0"+string(i)}
        draw_text(2+i*40-(frame*40),2,ii)
}
