c1 = merge_color(c_white,c_black,0.7)
c2 = merge_color(c_white,c_black,0.9)
c3 = merge_color(c_white,c_black,0.8)
draw_rectangle_color(0, 0, 128, room_height, c1, c1, c2, c2, 0)
draw_set_color(c3)
draw_rectangle(128, 0, 136, room_height, 0)