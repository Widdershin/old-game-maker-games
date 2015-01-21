w = argument0
h = w

z[argument1] = surface_create(w,h)

j = 0
k = -1

surface_set_target(z[argument1])
for (i=0; i<w*h; i+=1)
{ 
    range = 1/argument1
    v = random(range)+(1-range/2)
    draw_point_color(j,k,merge_color(c_white,c_black,v))
    j += 1
    if i mod w = 0
    {
        j = 0
        k += 1
    }
      
}
surface_reset_target()
