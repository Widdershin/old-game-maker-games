image_index = 0
image_speed = 0

t = 32

count = 0

//Checks above
if instance_place(x, y - t, oPath)
{
    image_index += 1
}

//Checks right
if instance_place(x + t, y, oPath)
{
    image_index += 2
    count += 1
}

//Checks below
if instance_place(x, y + t, oPath)
{
    image_index += 4
    count += 1
}

//Checks left
if instance_place(x - t, y, oPath)
{
    image_index += 8
}

//Checks below right
if instance_place(x + t, y + t, oPath)
{
    count += 1
}
