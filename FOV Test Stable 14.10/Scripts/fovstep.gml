//Argument0 = FOV Origin Object
//Argument1 = Obstructive Object
//Argument2 = Range
//if lighting
//{
    var sw, sh, a0, a1, asw, ash;
    a0 = argument0
    a1 = argument1
    sw = sprite_width
    sh = sprite_height
    asw = a0.sprite_width
    ash = a0.sprite_height
    
    collision1 = collision_line(x+sw/2,y+sh/2,a0.x+asw/2,a0.y+ash/2,a1,1,1)
    collision2 = collision_line(x+(sw/2)+1,y+(sh/2),a0.x+asw/2,a0.y+ash/2,a1,1,1)
    collision3 = collision_line(x+(sw/2)-1,y+(sh/2),a0.x+asw/2,a0.y+ash/2,a1,1,1)
    collision4 = collision_line(x+(sw/2),y+(sh/2)-1,a0.x+asw/2,a0.y+ash/2,a1,1,1)
    collision5 = collision_line(x+(sw/2),y+(sh/2)+1,a0.x+asw/2,a0.y+ash/2,a1,1,1)
    if collision1
    {
        if collision1.x = x && collision1.y = y
        {
            with(collision1)
            {
               instance_destroy()
            }
        }
    }
    if point_distance(x,y,a0.x,a0.y) < argument2
    {
        if !collision1 || !collision2 || !collision3 || !collision4 || !collision5
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
//}
