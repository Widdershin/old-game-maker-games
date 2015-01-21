if fire_ready = 1 && clip_ready = 1
{
bullet_id = instance_create(x,y,bullet)
bullet_id.speed = 12
bullet_id.direction = facing_direction
bullet_id.image_angle = facing_direction-90
fire_ready = fire_time
clip_count -= 1
}
