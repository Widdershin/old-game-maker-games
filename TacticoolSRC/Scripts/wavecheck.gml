if argument0 = rLab
{
    if time = 30  {wave(oLabRat,3) nextwave = "oRobotArm:4:60"}
    if time = 60 {wave(oRobotArm,4) nextwave = "oRobot:7:90"}
    if time = 90 {wave(oRobot,7) nextwave = "oLabRat:7:120"}
    if time = 120 {wave(oLabRat,7) nextwave = "oRobotArm:12:150"}
    if time = 150 {wave(oRobotArm,12) nextwave = "oRobot:10:180"}
    if time = 180 {wave(oRobot,10) nextwave = "oLabRat:15:210"}
    if time = 210  {wave(oLabRat,15) nextwave = "oRobotArm:32:240"}
    if time = 240 {wave(oRobotArm,32) nextwave = "oRobot:22:270"}
    if time = 270 {wave(oRobot,22) nextwave = "oLabRat:60:300"}
    if time = 300 {wave(oLabRat,60) nextwave = "oRobotArm:45:330"}
    if time = 330 {wave(oRobotArm,45) nextwave = "oRobot:50:360"}
    if time = 360 {wave(oRobot,50)}
}
