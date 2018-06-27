~space::
while GetKeyState("space","P")
{
Send {space}
sleep 100
}
return

*F3::
Suspend
Pause,,1
return

*F4::
ExitApp
return

*X::
Loop
{
Send, {a Down}
Sleep, 70
Send, {a Up}
Send, {d Down}
Sleep, 70
Send, {d Up}
}until !GetKeyState("F","P")
return