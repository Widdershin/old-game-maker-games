/*
    Controls the button and depresses it if there are units on top of it
*/
unit = instance_place(x,y,oUnit)
if unit
{
    down[ident] = true
    image_index = 1
}
else if !unit && prevunit
{
    down[ident] = false
    image_index = 0
}
prevunit = unit
