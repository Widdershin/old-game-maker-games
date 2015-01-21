w = argument0
h = w

a1 = argument1

z[a1] = surface_create(w,h)

j = 1
k = 1

surface_set_target(z[a1])
for (i=0; i<w-1*h-1; i+=1)
{ 
    /*mid = zx[j,k]
    rgt = zx[j+1,k]
    lft = zx[j-1,k]
    top = zx[j,k-1]
    btm = zx[j,k+1]*/
    draw_point_color(j,k,merge_color(c_white,c_black,random(1)))
    
    j += 1
    if i mod w = 0
    {
        j = 1
        k += 1
    }
      
}
surface_reset_target()
