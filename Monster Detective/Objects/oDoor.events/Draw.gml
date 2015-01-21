draw_self()

draw_primitive_begin(pr_trianglelist)
ratio = image_index / (image_number - 1)

xOffset = 8
yOffset = 4

width = 18 * (1 - ratio)
height = 27


draw_vertex_color(x + xOffset, y + yOffset,c_black, ratio / 10	)
draw_vertex_color(x + xOffset + width, y + yOffset,c_black,ratio)
draw_vertex_color(x + xOffset, y + height + yOffset, c_black, ratio / 10)

draw_vertex_color(x + xOffset + width, y + yOffset,c_black,ratio)
draw_vertex_color(x + xOffset + width, y + yOffset + height,c_black,ratio)
draw_vertex_color(x + xOffset, y + height + yOffset, c_black, ratio / 10)

draw_primitive_end()
