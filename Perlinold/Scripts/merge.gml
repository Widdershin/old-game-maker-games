a = argument0
final = surface_create(512,512)
surface_set_target(final)
for (i=1; i<=a; i+=1)
{
    draw_surface_stretched_ext(z[i],0,0,512,512,c_white,((a+1)-i)/a)
};
surface_reset_target()

