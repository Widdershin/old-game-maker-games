//oControl Step

if timer <= 0
{
    side = choose(0,1,2,3)
    if side = 0 //left side
    {
        x = 0
        y = random(room_height)
    }
    if side = 1 //top side
    {
        x = random(room_width)
        y = 0
    }
    if side = 2 //right side
    {
        x = room_width
        y = random(room_height)
    }
    if side = 3 //bottom side
    {
        x = random(room_width)
        y = room_height
    }
    asteroid = instance_create(x,y,oAsteroid)
    asteroid.life = 3
    timer = spawntime
}
timer -= 1
