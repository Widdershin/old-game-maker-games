draw_sprite(sprite_index,-1,x,y)
draw_set_font(fScore)
draw_set_color(c_yellow)
for (i=0; i<5; i+=1)
{
    hscore = string(highscore_value(i+1))
    repeat(6-string_length(hscore))
    {
        hscore = string_insert("0",hscore,0)
    }
    draw_text(xx,yy+i*48,"0"+string(i+1)+". "+highscore_name(i+1)+" - "+hscore)
}
xxx = sprite_width-string_width("01. FLY - 000513")-64-14
for (i=5; i<10; i+=1)
{
    if string_length(string(i+1)) = 1
    {
        place = "0"+string(i+1)
    }
    else
    {
        place = string(i+1)
    }
    hscore = string(highscore_value(i+1))
    repeat(6-string_length(hscore))
    {
        hscore = string_insert("0",hscore,0)
    }
    draw_text(xxx,yy+(i-5)*48,place+". "+highscore_name(i+1)+" - "+hscore)
}
draw_set_halign(fa_middle) 
draw_text(sprite_width/2,yy+240,"Press SPACE to begin!")
draw_set_halign(fa_left)
/*
draw_text(xxx,yy,"06. FLY - 000513")
draw_text(xxx,yy+48,"07. FLY - 000513")
draw_text(xxx,yy+96,"08. FLY - 000513")
draw_text(xxx,yy+144,"09. FLY - 000513")
draw_text(xxx,yy+192,"10. FLY - 000513")
