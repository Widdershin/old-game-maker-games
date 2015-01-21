if object_index = oMage 
{
    hspeed = 0 
    rot = 0 
    with(oUnit)
    {
        if distance_to_object(other) < 64 
        {
            if hp < hpt 
            {
                hp += 1
            }
        }
    }
    healing = 1
}
