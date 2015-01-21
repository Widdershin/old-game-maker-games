dX = x div t * t
dY = y div t * t

moveDir = 1

inputDelay = 10
inputWait = 0
test = 0

maxHP = 18
hp = maxHP

chargeDelay = 2
charge = false

defColor = make_color_rgb(158, 63, 0) 
color = defColor



stunned = false
stunnedPrev = stunned
stunnedTime = 0
stunnedTimeMax = inputDelay * 10


chargeChance = 0

hitTime = 0
