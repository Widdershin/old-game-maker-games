globalvar lighting, debug;
lighting = false
debug = false
newchar = false
newdungeon = false
cursor = 0
menuitem[0] = "New Game"
menuitem[1] = "FOV"
menuitem[2] = "Debug"
menuitem[3] = "Combat Test"
menuitem[4] = "New Character"
menuitem[5] = "Inventory Test"
menucount = 6
stat[0] = "STR"
stat[1] = "INT"
stat[2] = "DEX"
stat[3] = "CHA"
statcount = 4
allocate = 20
STR = 10
INT = 10
DEX = 10
CHA = 10
///////////////////////////
race[0,0] = "Human"      //  
race[0,1] = 1            //  
race[0,2] = 1            //  
race[0,3] = 1            // 
race[0,4] = 1            // 
//-----------------------//
race[1,0] = "Elf"        //  
race[1,1] = 0            //  
race[1,2] = 2            //  
race[1,3] = 1            //  
race[1,4] = 1            // 
//-----------------------//
race[2,0] = "Dwarf"      //  
race[2,1] = 3            //  
race[2,2] = 0            //  
race[2,3] = 3            //  
race[2,4] = -2           //  
//-----------------------//
race[3,0] = "Orc"        //  
race[3,1] = 4            //  
race[3,2] = -3           // 
race[3,3] = 3            //  
race[3,4] = 0            //  
//-----------------------//
race[4,0] = "Snail"      // 
race[4,1] = -9           //  
race[4,2] = -9           //  
race[4,3] = -9           //  
race[4,4] = -9           // 
//-----------------------//
racecount = 5            //  
///////////////////////////
if room = rCombat{aigrid()}
