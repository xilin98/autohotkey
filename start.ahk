#Hotstring EndChars  `t
#SingleInstance Force
#NoEnv
#MaxHotkeysPerInterval 200

Menu, Tray, Icon, %A_ScriptDir%\start.ico

global mode := "close"

#if (mode = "close")

~esc & space::
mode := "z-mode"
Gosub, showMode
return

!z::
mode := "z-mode"
Gosub, showMode
return

#if

showMode:
    tooltip, % mode, 0, 2100 
    sleep, 2000
    tooltip, , 1000, 1500 
return

~esc::
Gosub, showMode
return



 #include %A_ScriptDir%\scripts\alt-command.ahk
 #include %A_ScriptDir%\scripts\esc-command.ahk
 #include %A_ScriptDir%\scripts\str-command.ahk
 #include %A_ScriptDir%\scripts\str-abbr.ahk
 #include %A_ScriptDir%\scripts\tab-command.ahk
 #include %A_ScriptDir%\scripts\win-command.ahk
 #include %A_ScriptDir%\scripts\space-command.ahk
 #include %A_ScriptDir%\scripts\lbutton-command.ahk

 #include %A_ScriptDir%\scripts\v-mode.ahk
 #include %A_ScriptDir%\scripts\n-mode.ahk
 #include %A_ScriptDir%\scripts\z-mode.ahk
 #include %A_ScriptDir%\scripts\v-mode-cap.ahk
 