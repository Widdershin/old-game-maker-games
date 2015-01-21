var xp, i, alt;
xp = 0;

//Draw line
draw_set_color(c_black);
draw_line(0, y+48, room_width, y+48);

//Draw name
var name;
name = string(device) + " " + joy_name(device);
draw_text(xp, y, name);

y += 16;

//Draw axes
for (i = 0; i < axes; i += 1)
{
    draw_set_color(c_red);
    draw_rectangle(xp+4, y+2, xp+12, y+30, 0);
    draw_set_color(c_green);
    draw_rectangle(xp+4, y+16 + 14 * joy_axis(device, i), xp+12, y+2, 0);
    xp += 16;
}

//Draw buttons
alt = false;
for (i = 0; i < buttons; i += 1)
{
    if (joy_pressed(device, i)) draw_set_color(c_white);
    else if (joy_released(device, i)) draw_set_color(c_black);
    else if (joy_button(device, i)) draw_set_color(c_green);
    else draw_set_color(c_red);
    draw_circle(xp+8, y+8 + 16*alt, 7, 0);
    if (alt) xp += 16;
    alt = !alt;
}
if (alt) xp += 16;

//Draw hats
for (i = 0; i < hats; i += 1)
{
    draw_set_color(c_black);
    draw_circle(xp+16, y+16, 11, 1);
    draw_set_color(c_red);
    var hat, xo, yo;
    hat = joy_hat(device, i);
    if (hat < 0) {xo = 0; yo = 0;}
    else {xo = lengthdir_x(11, 90-hat); yo = lengthdir_y(11, 90-hat);}
    draw_circle(xp+16+xo, y+16+yo, 3, 0);
    xp += 32;
}


y -= 16;