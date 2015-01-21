angleFacing += angleVelocity
image_angle = parent.image_angle + angleOffset + angleFacing

offsetLen = point_distance(0, 0, offsetX, offsetY)
offsetDir = point_direction(0, 0, offsetX * yScale, offsetY)

x = parent.x + lengthdir_x(offsetLen, offsetDir + parent.image_angle)
y = parent.y + lengthdir_y(offsetLen, offsetDir + parent.image_angle)

if angleFacing > 360
{
	   angleFacing -= 360
}
if angleFacing < 0
{
	   angleFacing += 360
}
