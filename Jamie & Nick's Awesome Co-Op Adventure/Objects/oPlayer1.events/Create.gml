wmove = vk_up
amove = vk_left
smove = vk_down
dmove = vk_right
usekey = ord("M")
joystick = true
joystickid = 1
aimbot = false
target = -1
color = c_green
colord = color
image_speed = 0
if !joystick_exists(joystickid) {joystick = false}
gunid = instance_create(x,y-3,oSMG)
gunid.orig = id
gunid.color = color