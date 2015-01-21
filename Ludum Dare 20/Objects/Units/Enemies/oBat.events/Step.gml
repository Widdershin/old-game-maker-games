/*
    Controls animation and dying
*/
if idle {
            sprite_index = sBatIdle
            image_speed = 0
        }
else    {
            sprite_index = sBat
            image_speed = 1/3
        }
if hp <= 0
{
    instance_destroy()
}
