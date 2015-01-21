/*
    Controls the gate and moves characters out of the way underneath it
*/
if down[ident]
{
    if image_index < image_number-1
    {
        image_speed = 1
    }
    else
    {
        image_speed = 0
        solid = false
    }
}
else
{
    if image_index > 0
    {
        image_speed = -1
        solid = true
        squish = instance_place(x,y,oLiving)
        if squish
        {
            if squish.x >= x+16
            {
                with(squish)
                {
                    move_outside_solid(0,128)
                }
            }
            if squish.x <= x+15   
            {
                   with(squish)
                {
                    move_outside_solid(180,128)
                }
            }
        }
    }
    else
    {
        image_speed = 0
        solid = true
    }
}

