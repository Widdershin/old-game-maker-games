/*
    Displays the text in the bubbles
*/
if typedelay = 0 && typed < string_length(message)
{
    typed += 1
    typedelay = 2
}
if typedelay > 0
{
    typedelay -= 1
}
