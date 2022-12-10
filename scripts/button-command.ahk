#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

~LButton & t::
sendInput, #3
return


~LButton & 1::
sendInput, #1
return

~LButton & 2::
sendInput, #2
return

~LButton & 3::
sendInput, #3
return

~LButton & 4::
sendInput, #4
return


~LButton & q::
sendInput, !{left}
return

~LButton & w::
sendInput, !{right}
return

~LButton & c::
sendInput, ^c
return

~LButton & v::
sendInput, ^v
return

~LButton & x::
sendInput, {Delete}
return   

;切换窗口
~Lbutton & RButton::
SendInput, ^+!s
return