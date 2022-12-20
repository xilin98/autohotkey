#Hotstring EndChars  )
#SingleInstance Force
#NoEnv
#MaxHotkeysPerInterval 1000 
SetWorkingDir, %A_ScriptDir%

; Always run your script as admin
if not A_IsAdmin
{
   Run *RunAs "%A_ScriptFullPath%"  ; Requires v1.0.92.01+
   ExitApp
}

; 图标
Menu, Tray, Icon, %A_ScriptDir%\scripts\start.ico

 #include %A_ScriptDir%\scripts\alt-command.ahk
 #include %A_ScriptDir%\scripts\esc-command.ahk
 #include %A_ScriptDir%\scripts\str-command.ahk
 #include %A_ScriptDir%\scripts\str-abbr.ahk
 #include %A_ScriptDir%\scripts\ctrl-command.ahk
 #include %A_ScriptDir%\scripts\win-command.ahk
 #include %A_ScriptDir%\scripts\app.ahk
 #include %A_ScriptDir%\scripts\double.ahk



