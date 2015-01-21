if winTime < 200
{
    draw_set_color(c_yellow)
    draw_set_alpha(winTime / 180)
    draw_rectangle(0, 0, room_width, room_height, 0)
    draw_set_alpha(1)
}

if instance_number(oTrain)
{
    train1 = instance_find(oTrain,0)
    train2 = instance_find(oTrain,1)
    
    if !train1
    {
        train1HP = 0
    }
    else
    {
        train1HP = train1.hp
    }
    if !train2
    {
        train2HP = 0
    }
    else
    {
        train2HP = train2.hp
    }
    
    winPercent = ((room_width - t*5) * (1 - ((train1HP + train2HP)/(oTrain.hpMax * 2)))) div t * t
    if keyboard_check(ord("L"))
    {
        show_message((train1.hp + train2.hp)/(oTrain.hpMax * 2))
    }
}
else
{
    winPercent = room_width - t*5
}
draw_rectangle(t*5,384,t*5+winPercent,room_height,0)
