//clamp(lowerValue, upperValue, currentValue)
//Clamps an angle to within the ranges provided

lowerBound = argument0
upperBound = argument1
value = argument2

if value < lowerBound
{
    value = lowerBound
}

if value > upperBound
{
    value = upperBound
}

return value    
