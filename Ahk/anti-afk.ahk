RandSleep(x,y) {
Random, rand, %x%, %y%
Sleep %rand%
}

$Numpad2::{
loop{
 MouseClick left
 RandSleep(10,15)}
}
esc::exitapp