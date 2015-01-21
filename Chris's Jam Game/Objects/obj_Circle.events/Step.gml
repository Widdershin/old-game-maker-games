if (px_bodyissleeping(body)==false)
{//The above function will check if the body is awake before wastinng CPU power
//on the functions below.
x=floor(px_bodygetx(body));
y=floor(px_bodygety(body));
image_angle=px_bodygetangle(body);
}