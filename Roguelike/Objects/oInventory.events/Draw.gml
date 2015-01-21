/*
temp = 0
repeat(menucount)
{
    draw_set_valign(fa_top)
    draw_set_halign(fa_left)
    draw_text(15,temp*15+15,string(temp+1)+") "+menuitem[temp])
    temp += 1
}*/
draw_rectangle(7,7,136,136,1)
draw_sprite_stretched(sFloor,-1,8,8,128,128)
draw_sprite_stretched(sPlayer,-1,8,8,128,128)
temp = 0
repeat(equipcount)
{
    if cursor = temp {draw_text(150,temp*15+5,"> "+equipslot[temp]+": ")}
                else {draw_text(150,temp*15+5,"  "+equipslot[temp]+": ")}
    temp += 1
}
temp = 0
temp2 = 0
draw_text(320,0,"|#|#|#|#|#|#|#|#|#|#|#|#|#|#|#|#|#|#|#|#|#|#|#|#|#|#|#|#|#|#|#|#|#|#|#|#|#|#|#|#|#|#|#|#|#|#|#|#|#|#|#")
/*repeat(ds_list_size(invid))
{
    if filterwep
    {
        if string_count("wep",ds_list_find_value(invid,temp2))
        {
            if cursor = temp
            {
                draw_text(5,215+temp*15,"> "+invreadname(ds_list_find_value(invid,temp2)))
                cursoraim = temp2
            }
            else
            {
                draw_text(5,215+temp*15,"  "+invreadname(ds_list_find_value(invid,temp2)))
            }
            temp += 1
        }
        temp2 += 1
    }
    else
    {
        if cursor = temp
        {
            draw_text(5,215+temp*15,"> "+invreadname(ds_list_find_value(invid,temp)))
            cursoraim = temp
        }
        else
        {
            draw_text(5,215+temp*15,"  "+invreadname(ds_list_find_value(invid,temp)))
        }
        temp += 1    
    }
}*/
