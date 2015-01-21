//oBullet Step
asteroid = instance_place(x,y,oAsteroid)
if asteroid
{
    with(asteroid)
    {
        if life > 1
        {
            repeat(2)
            {
                asteroid = instance_create(x,y,oAsteroid)
                asteroid.life = life-1
            }
        }
        instance_destroy()
    }
    instance_destroy()
}
