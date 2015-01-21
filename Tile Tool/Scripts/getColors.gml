sprite = sTest
spritew = sprite_get_width(sprite)
spriteh = sprite_get_height(sprite)
colors = ds_map_create()
surface = surface_create(spritew,spriteh)
surface_set_target(surface)
draw_sprite(sprite,0,0,0)

for(i = 0; i < spritew; i += 1)
{
    for(j = 0; j < spriteh; j += 1)
    {
        curcolor = draw_getpixel(i,j)
        if ds_map_exists(colors,curcolor)
        {
            value = ds_map_find_value(colors,curcolor)
            ds_map_replace(colors,curcolor,value + 1)
        }
        else
        {
            ds_map_add(colors,curcolor,1)
        }
    }
}

current = ds_map_find_first(colors)
show_debug_message(current)
for(i = 0; i < ds_map_size(colors)-1; i += 1)
{
    show_debug_message(ds_map_find_next(colors,current))
}
