//relative(midpoint, value)
//Tranforms an angle relative as if the midpoint was 0

midpoint = argument0 
value = argument1

output = value - midpoint

if output > 180
{
    output -= 360
}

return output
