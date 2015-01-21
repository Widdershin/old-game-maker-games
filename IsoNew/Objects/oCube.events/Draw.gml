//execute_file("draw.txt")
if iso = true
{
    mask_index = sIsoMask
    depth = -dy
    // cube top
    draw_set_color(c_white)
    draw_primitive_begin_texture(pr_trianglefan, toptex)
    draw_vertex_texture(dx,dy,0,1)  // center
    draw_vertex_texture(dx-s/b,dy-s/a,1,1) // top left
    draw_vertex_texture(dx,dy-s/(a/2),0,0) // top
    draw_vertex_texture(dx+s/b,dy-s/a,1,0) // top right
    draw_primitive_end()
    
    // cube left
    draw_set_color(c_ltgray)
    draw_primitive_begin_texture(pr_trianglefan, lefttex)
    draw_vertex_texture(dx-s/b,dy-s/a,0,0) // top left
    draw_vertex_texture(dx,dy,1,0) // center
    draw_vertex_texture(dx,dy+s/(a/2),1,1) // bottom center
    draw_vertex_texture(dx-s/b,dy+s/a,0,1)     // bottom left
    draw_primitive_end()
    
    // cube right
    draw_set_color(c_gray)
    draw_primitive_begin_texture(pr_trianglefan, righttex)
    draw_vertex_texture(dx+s/b,dy-s/a,0,0) // top right
    draw_vertex_texture(dx,dy,1,0)         // center
    draw_vertex_texture(dx,dy+s/(a/2),1,1)     // bottom center
    draw_vertex_texture(dx+s/b,dy+s/a,0,1)     // bottom right
    draw_primitive_end()
}
else
{
    draw_sprite(sprite_index,-1,x,y)
    mask_index = sprite_index
}
draw_set_color(c_fuchsia)
draw_set_font(fBasic)
draw_set_valign(fa_center)
draw_set_halign(fa_middle)
//draw_text(dx+16,dy+16,string(dx/32)+","+string(dy/32))
