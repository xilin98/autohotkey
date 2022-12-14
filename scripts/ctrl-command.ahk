#NoEnv
#SingleInstance, Force
SendMode, Input
SetBatchLines, -1
SetWorkingDir, %A_ScriptDir%

#IfWinActive
 ^+WheelUp::
    WinGetPos, X, Y, Width, Height, A
    WinMove, A, , X - 50 , Y - 50, Width + 100, Height+100
return

 ^+WheelDown::

    WinGetPos, X, Y, Width, Height, A
    WinMove, A, , X+50, Y + 50, Width-100, Height-100
return

; Use the left mouse button to drag the window
^+LButton::
    WinGetPos, WindowX, WindowY, WindowWidth, WindowHeight, A
    CoordMode, Mouse, Screen
    MouseGetPos, StartX, StartY
    StartX := StartX - WindowX
    StartY := StartY - WindowY
    SetTimer, MoveWindow, 10
return

MoveWindow:
    CoordMode, Mouse, Screen
    MouseGetPos, CurX, CurY
    WindowX := CurX - StartX
    WindowY := CurY - StartY
    WinMove, A, , WindowX, WindowY, WindowWidth, WindowHeight
return

; Stop moving the window when the left mouse button is released
^+LButton Up::
    SetTimer, MoveWindow, off
return