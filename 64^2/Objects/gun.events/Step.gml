if player.facing_direction = 'up'
{
x = player.x
y = player.y-1
player.direction = 90
}
if player.facing_direction = 'down'
{
x = player.x
y = player.y+1
player.direction = 270
}
if player.facing_direction = 'left'
{
x = player.x-1
y = player.y
player.direction = 180
}
if player.facing_direction = 'right'
{
x = player.x+1
y = player.y
player.direction = 0
}
fireable += 1
