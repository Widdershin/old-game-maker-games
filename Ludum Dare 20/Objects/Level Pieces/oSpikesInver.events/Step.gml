/*
    Controls the spikes and kills players above it
*/
if !down[ident]
{
    if image_index < image_number-1
    {
        image_speed = 1
        solid = false
    }
    else
    {
        image_speed = 0
        solid = false
    }
    squish = instance_place(x,y,oLiving)
    if squish
    {
        with(squish)
        {
            hp -= 100
        }
    }
}
else
{
    if image_index > 0
    {
        image_speed = -1
        solid = false
    }
    else
    {
        image_speed = 0
        solid = false
    }
}
