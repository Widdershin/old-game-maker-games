/*
    Deals damage to any object under the attack
*/
if image_index = image_number-1
{
    if instance_exists(target)
    {
        target.hp -= damage
        sound_play(soHit)
    }
    instance_destroy()
}
