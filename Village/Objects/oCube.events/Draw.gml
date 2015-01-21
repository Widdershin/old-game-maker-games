if (!renderIso)
{
    draw_sprite(sprite_index,-1,x,y)
}
else if (renderIso)
{

    cx = x/32
    cy = y/32
    dx = offx + cx*s/2 - cy*s/2
    dy = offy + cy*s/4 + cx*s/4
    
    depth = -dy-(z*10000)
    
    // cube top
    draw_set_color(c_white)
    draw_primitive_begin_texture(pr_trianglefan, topTex)
    draw_vertex_texture(dx,dy,0,1)  // center
    draw_vertex_texture(dx-s/b,dy-s/a,1,1) // top left
    draw_vertex_texture(dx,dy-s/(a/2),0,0) // top
    draw_vertex_texture(dx+s/b,dy-s/a,1,0) // top right
    draw_primitive_end()
    
    // cube left
    draw_set_color(c_ltgray)
    draw_primitive_begin_texture(pr_trianglefan, leftTex)
    draw_vertex_texture(dx-s/b,dy-s/a,0,0) // top left
    draw_vertex_texture(dx,dy,1,0) // center
    draw_vertex_texture(dx,dy+s/(a/2),1,1) // bottom center
    draw_vertex_texture(dx-s/b,dy+s/a,0,1)     // bottom left
    draw_primitive_end()
    
    // cube right
    draw_set_color(c_gray)
    draw_primitive_begin_texture(pr_trianglefan, rightTex)
    draw_vertex_texture(dx+s/b,dy-s/a,0,0) // top right
    draw_vertex_texture(dx,dy,1,0)         // center
    draw_vertex_texture(dx,dy+s/(a/2),1,1)     // bottom center
    draw_vertex_texture(dx+s/b,dy+s/a,0,1)     // bottom right
    draw_primitive_end()
}
