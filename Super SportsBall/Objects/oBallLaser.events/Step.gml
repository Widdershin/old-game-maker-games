ball = instance_place(x, y, oBall)
if ball
{
    ball.speed = 0
    if ball.lastTeam != -1
    {
        with(oSpawn)
        {
            if team != other.ball.lastTeam
            {
                other.ball.x = x + t/2
                other.ball.y = y + t/2
            }
        }
    }
    else
    {
        ball.x = ball.xOrigin
        ball.y = ball.yOrigin
    }
}
