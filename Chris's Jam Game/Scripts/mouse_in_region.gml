x1=argument0//get value
y1=argument1//get value
x2=argument2//get value
y2=argument3//get value


if(mouse_x<x2 and mouse_y<y2 and mouse_x>x1 and mouse_y>y1){//check if mouse is in region
return 1;//if in the region, return true
}
return 0;//if outside region, return false

