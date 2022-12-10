#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

#IfWinActive, ahk_exe v2rayN.exe
v::
SendInput, ^a
sendInput, ^p
sleep, 2000
sendinput, {enter} 
return

