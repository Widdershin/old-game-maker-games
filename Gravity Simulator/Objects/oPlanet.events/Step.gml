/*pow = (320-point_distance(x,y,320,240))/100
dir = point_direction(x,y,320,240)
if pow < 0 pow = 0
motion_add(dir,pow)*/

temp = 0
repeat(instance_number(oPlanet))
{
inid = instance_find(oPlanet,temp)
if inid.id != id
{
inx = inid.x
iny = inid.y
pow = ((mass*inid.mass)/point_distance(x,y,inid.x,inid.y)^2)/50
dir = point_direction(x,y,inx,iny)
if pow < 0 pow = 0
motion_add(dir,pow)
temp += 1
}
}
