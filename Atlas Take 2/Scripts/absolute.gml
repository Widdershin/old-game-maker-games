//absolute(midpoint, value)
//Transforms a midpoint relative angle to an absolute angle

midpoint = argument0 
value = argument1

output = value + midpoint

if output < 360
{
    output -= 360
}

return output
