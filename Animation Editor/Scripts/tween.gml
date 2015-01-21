framecount = 60*key[cur].time
with(oBone)
{
    var dir, spd;
    dir = point_direction(xx[cur],yy[cur],xx[cur+1],yy[cur+1])
    spd = point_distance(xx[cur],yy[cur],xx[cur+1],yy[cur+1])/other.framecount
    motion_set(dir,spd)
}
