colour = ds_list_create()
xx = 0
yy = 0
xy = 0
count = 0
repeat(sprite_height)
{
    repeat(sprite_width)
    {
        col = draw_getpixel(xx,yy) //Get the colour of the pixel
        ind = ds_list_find_index(colour,col) //Checks if the colour already exists
        if ind < 0 
        {
            ds_list_add(colour,col) //Adds the colour
            count[ds_list_size(colour)-1] = 1
        } 
        else 
        {
            count[ind] += 1 //Else +1 to the amount of that colour
        }
        xx += 1
        xy += 1
    }
    yy += 1
    xx = 0
}
temp = 0 
message = "I inspected "+string(xy)+" points and found "+string(ds_list_size(colour))+" unique colours."
show_message(message)
ready = 1
sprite_index = sBlank
screen_redraw()
show_message('test')

