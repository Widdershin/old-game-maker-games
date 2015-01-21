dX = x div t * t
dY = y div t * t

moveDir = 1

inputDelay = 10
inputWait = 0
test = 0


shootDelay = 225
shootWait = shootDelay

hpMax = 40
hp = hpMax

fineColor = c_lime
hurtColor = c_red

color = merge_color(c_red, c_lime, 1 - (hp / hpMax))

hitTime = 0
