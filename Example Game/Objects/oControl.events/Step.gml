hspeed = rightspeed-leftspeed
//bColor = make_color_rgb(irandom(255),irandom(255),irandom(255))
//background_color = bColor



enemySpawn -= 1
if enemySpawn < 1
{
instance_create(random(640),0,oEnemy)
enemySpawn = irandom(300)+150/enemyKillCount
}
