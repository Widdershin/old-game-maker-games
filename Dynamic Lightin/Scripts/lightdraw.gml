draw_set_blend_mode(bm_add)
dir = direction
i = dir-(range/2)
surface_set_target(light)
repeat(prec)
{
    point = instance_create(x+16,y+16,oPoint) //Sends a collider to determine a collision
    with(point)
    {
        move_contact_solid(other.i,other.dist)
        dir = other.i
        other.x1 = x
        other.y1 = y
if distance_to_point(other.x+16,other.y+16) < other.dist-1
{
other.x1 = x + lengthdir_x(1,dir)
other.y1 = y + lengthdir_y(1,dir)
tar = instance_nearest(x,y,oBlock)
if tar
{
tar.luminance += (other.dist/distance_to_point(other.x+16,other.y+16))/other.prec*0.5
}
}
        instance_destroy()
    }
//x1 = x+lengthdir_x(range,i)
//y1 = y+lengthdir_y(range,i)
    if i = dir-(range/2) //Stores the first points for later drawing
    {
        xf = x1 
        yf = y1
    }
    if i != dir-(range/2)
    { 
        dist1 = point_distance(x+16,y+16,x1,y1) //Distance from source to vertex
        dist2 = point_distance(x+16,y+16,x2,y2) //Distance from source to vertex
// color = make_color_rgb(random(128)+64,random(128)+64,random(128)+64)
col1 = merge_color(color,c_black,(dist1/dist)) //Merges white and black based on distance
col2 = merge_color(color,c_black,(dist2/dist))
divfrac = 0.3
div1x = lengthdir_x(dist*divfrac,point_direction(x+16,y+16,x1,y1))
div1y = lengthdir_y(dist*divfrac,point_direction(x+16,y+16,x1,y1))
div2x = lengthdir_x(dist*divfrac,point_direction(x+16,y+16,x2,y2))
// div2y = lengthdir_y(dist*divfrac,point_direction(x+16,y+16,x2,y2))
divcol = make_color_rgb(color_get_red(color)*divfrac,color_get_green(color)*divfrac,color_get_blue(color)*divfrac)
draw_primitive_begin(pr_trianglefan)
draw_vertex_color(x+16,y+16,color,1)
// draw_vertex_color(x+16+div1x,y+16+div1y,color,1)
draw_vertex_color(x1,y1,color,1-dist1/dist)
draw_vertex_color(x2,y2,color,1-dist2/dist)
// draw_vertex_color(x+16+div2x,y+16+div2y,c_red,1)
draw_primitive_end()
if outline
{
draw_triangle_color(x+16,y+16,x1,y1,x2,y2,c_white,c_white,c_white,1)//draws outlines
}
//    draw_line_color(x+16,y+16,x1,y1,c_red,c_red)
    }
    x2 = x1
    y2 = y1
    i += range/prec
}
if range = 360
{
distf = point_distance(x+16,y+16,xf,yf)
colf = merge_color(color,c_black,(distf/dist)) //Merges white and black based on distance
draw_triangle_color(x+16,y+16,x1,y1,xf,yf,color,col1,colf,0)
if outline
{
draw_triangle_color(x+16,y+16,x1,y1,xf,yf,c_white,c_white,c_white,1)
}
}
surface_reset_target()
draw_set_blend_mode(bm_normal)
//draw_sprite(sprite_index,-1,x,y)
