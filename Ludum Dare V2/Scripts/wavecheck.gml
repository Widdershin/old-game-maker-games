if argument0 = rLab
{
    if time = 5  {wave(oLabRat,3) nextwave = "oRobotArm:2:30"}
    if time = 30 {wave(oRobotArm,2) nextwave = "oRobot:5:60"}
    if time = 60 {wave(oRobot,5)}
}
