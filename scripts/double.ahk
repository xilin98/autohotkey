#NoEnv
#SingleInstance, Force
SendMode, Input
SetBatchLines, -1
SetWorkingDir, %A_ScriptDir%

#IfWinActive, ahk_exe obsidian.exe
!f::
sendInput, {shift}
sleep, 50
sendInput, {shift}
return
#if
