
if target.direction = 90
{
x = target.x
y = target.y-1
}
if target.direction = 270
{
x = target.x
y = target.y+1
}
if target.direction = 180
{
x = target.x-1
y = target.y
}
if target.direction = 0
{
x = target.x+1
y = target.y
}
fireable += 1
