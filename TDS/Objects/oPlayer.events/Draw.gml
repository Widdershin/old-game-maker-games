draw_sprite(sprite_index, -1, x, y)

surface_set_target(surface)
draw_clear(c_black)
draw_set_blend_mode(bm_subtract)

draw_set_color(c_white)
draw_primitive_begin(pr_trianglefan)
draw_vertex(x, y)

ox = x
oy = y

for (i = 0; i < fov; i += fov / fovDetail)
{
   
    dir = (facingDir - fov / 2) + i
    px = x + lengthdir_x(fovDist, dir)
    py = y + lengthdir_y(fovDist, dir)
    if collision_line(x, y, px, py, oWall, 1, 0)
    {
        point = instance_create(x, y, oPoint)
        with(point)
        {
        move_contact_solid(other.dir, other.fovDist)
        other.px = x + lengthdir_x(1, other.dir)
        other.py = y + lengthdir_y(1, other.dir)
        instance_destroy()
        }
    }
    

    draw_vertex(ox, oy)
    draw_vertex(px, py)
    ox = px
    oy = py
    draw_set_blend_mode(bm_normal)
    draw_line(ox, oy, px, py)
    
}

draw_set_blend_mode(bm_subtract)
draw_primitive_end()

surface_reset_target()


draw_set_blend_mode(bm_normal)
draw_surface(surface, 0, 0)

