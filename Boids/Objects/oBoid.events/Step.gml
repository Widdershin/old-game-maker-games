motion_add(point_direction(x,y,mouse_x,mouse_y),0.4)
motion_add(point_direction(x,y,flockavx,flockavy),0.2)
motion = 0
storex = 0
storey = 0
count = 0
for (i=0; i<instance_number(oBoid); i+=1)
{
    with(instance_find(oBoid,i))
    {
        dist = point_distance(x,y,other.x,other.y)
        if dist < range*(speed/10)
        {
            other.motion += range*(speed/10)-dist
            other.storex += other.x-x
            other.storey += other.y-y
            other.count += 1
        }
    }
}
newx = storex/count
newy = storey/count
//show_debug_message(string(newx)+","+string(newy))
angle = point_direction(0,0,newx,newy)
if newx != 0 && newy != 0
{
    if motion > 0
    {
        if motion > 1000
        {
            motion = 1000
        }
    }   motion_add(angle,motion/250)
}
friction = 0.2
image_angle = direction
if speed < maxspeed
{
    motion_set(direction,maxspeed)
}
