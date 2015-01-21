w = argument0+1
h = w
zx[w,h] = 0
a1 = argument1
j = 0
k = 0

for (i=0; i<w*h; i+=1)
{ 
    range = 1/argument1
    v = random(range)+(1-range/2)
    zx[j,k] = v
    j += 1
    if i mod w = 0
    {
        j = 0
        k += 1
    }
      
}



z[a1] = surface_create(w,h)
surface_set_target(z[a1])

j = 0
k = -1

ww = w-1
hh = h-1
num = ww*hh
for (i=0; i<num; i+=1)
{
    
        if i mod ww = 0
    {
        j = 0
        k += 1
    }

    mid = zx[j,k]
    
    if j < ww
    rgt = zx[j+1,k]
    else
    rgt = 0.5
    
    if j < ww && k > 0
    trgt = zx[j+1,k-1]
    else
    trgt = 0.5
    
    if k > 0
    top = zx[j,k-1]
    else
    top = 0.5
    
    if j > 0 && k < 0
    tlft = zx[j-1,k-1]
    else
    tlft = 0.5
    
    if j > 0
    lft = zx[j-1,k]
    else
    lft = 0.5
    
    if j > 0 && k < hh
    blft = zx[j-1,k+1]
    else
    blft = 0.5
    
    if j < ww && k < hh
    brgt = zx[j+1,k+1]
    else
    brgt = 0.5
    
    if k < hh
    btm = zx[j,k+1]
    else
    btm = 0.5
    
    show_debug_message(string(j)+","+string(k))
    
    draw_point_color(j,k,merge_color(c_white,c_black,mean(mid,rgt,trgt,top,tlft,lft,blft,brgt,btm)-0.5))
    
    j += 1
      
}
surface_reset_target()
