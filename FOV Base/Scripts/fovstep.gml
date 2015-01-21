if point_distance(x,y,oPlayer.x,oPlayer.y) < argument2
{
    if !collision_line(x+sprite_width/2,y+sprite_height/2,argument0.x+argument0.sprite_width/2,argument0.y+argument0.sprite_height/2,argument1,1,1) || !collision_line(x+(sprite_width/2)-1,y+(sprite_height/2)-1,argument0.x+argument0.sprite_width/2,argument0.y+argument0.sprite_height/2,argument1,1,1)
    {
        cansee = true
        haveseen = true
    }
    else
    {
        cansee = false
    }
}
else
{
    cansee = false
}
