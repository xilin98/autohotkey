#Hotstring EndChars  `t
#SingleInstance Force
#NoEnv
#MaxHotkeysPerInterval 1000 

; Always run your script as admin
if not A_IsAdmin
{
   Run *RunAs "%A_ScriptFullPath%"  ; Requires v1.0.92.01+
   ExitApp
}



; 解决粘滞问题
SetKeyDelay, 30 
SetMouseDelay, 30 
SetWinDelay, 30

; 图标
Menu, Tray, Icon, %A_ScriptDir%\scripts\start.ico

; global mode := "close"

; ; 显示 mode
; showMode:
;     tooltip, % mode, 0, 2100 
;     sleep, 2000
;     tooltip, , 1000, 1500 
; return



 #include %A_ScriptDir%\scripts\alt-command.ahk
 #include %A_ScriptDir%\scripts\esc-command.ahk
 #include %A_ScriptDir%\scripts\str-command.ahk
 #include %A_ScriptDir%\scripts\str-abbr.ahk
 #include %A_ScriptDir%\scripts\ctrl-command.ahk
;  #include %A_ScriptDir%\scripts\tab-command.ahk
 #include %A_ScriptDir%\scripts\win-command.ahk
 #include %A_ScriptDir%\scripts\button-command.ahk
;  #include %A_ScriptDir%\scripts\app.ahk

;  #include %A_ScriptDir%\scripts\v-mode.ahk
;  #include %A_ScriptDir%\scripts\n-mode.ahk
;  #include %A_ScriptDir%\scripts\z-mode.ahk
;  #include %A_ScriptDir%\scripts\v-mode-cap.ahk
 #include %A_ScriptDir%\scripts\double.ahk




#if