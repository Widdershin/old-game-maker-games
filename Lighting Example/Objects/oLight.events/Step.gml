movegrid(TS)
with(oTile)
{   
    range = point_distance(x+TS/2,y+TS/2,other.x+TS/2,other.y+TS/2)
    if range < TS*other.lightsource
    {
        light += (TS*other.lightsource)-range
    }
}

