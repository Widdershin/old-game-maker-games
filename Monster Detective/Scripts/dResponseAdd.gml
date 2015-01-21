//dResponseAdd(0, "This is a test option", 1)

ind = argument0
text = argument1
link = argument2

count = dialogue[ind, 1]

num = count * 2 + 2

dialogue[ind, num] = string(text)
dialogue[ind, num + 1] = link

dialogue[ind, 1] += 1


