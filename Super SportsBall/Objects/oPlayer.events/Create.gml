//execute_file("oPlayerCreate.txt")

keyUp = ord("W")
keyLeft = ord("A")
keyDown= ord("S")
keyRight= ord("D")
keyWant = ord("Q")
keyGive = ord("E")

keyRestart = ord("R")

xOrigin = x
yOrigin = y

image_speed = 0

hAccel = 0.4
hFric = 0.92
hMax = 6.75

hasBall = false

justThrown = 0
throwDelay = 45

throwSpeedMin = .5
throwSpeedMax = 12

throwInput = false
throwInputPrev = throwInput

jumpAccel = 2
jumpTime = 10
jumping = false
jumpCount = 0

jumpInput = false
jumpInputPrev = jumpInput

aimDirection = 0

gravityMax = 0.3

charge = 0
chargeMax = 30
held = false

onGround = false

deadzone = 0.2
xInput = 0

pickUpWant = false
pickUpGive = false

stunned = false
stunnedTime = 30

inheritance = 1
