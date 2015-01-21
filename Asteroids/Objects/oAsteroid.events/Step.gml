//oAsteroid Step
if x < -sprite_width/2
{
    x += room_width+sprite_width
}

if x > room_width+sprite_width/2
{
    x -= room_width+sprite_width
}

if y < -sprite_height/2
{
    y += room_height+sprite_height
}

if y > room_height+sprite_height/2
{
    y -= room_height+sprite_height
}

