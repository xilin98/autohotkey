;;---全局
#Hotstring EndChars ) )
#SingleInstance Force
#MaxHotkeysPerInterval 200
#InstallKeybdHook
#UseHook

SetWorkingDir %A_ScriptDir%

;; Always run your script as admin
if not A_IsAdmin
{ 
   Run *RunAs "%A_ScriptFullPath%"
   ExitApp
}

SetTimer, timer1, 100		;用来实时监测 
 
return 
 
timer1:		
	; MsgBox,Ctrl键目前处于假按状态 
 
	state_Alt := GetKeyState("Esc")	;获取Alt键的功能状态，用户或者程序按下为1，否则为0 
	state_Alt_P := GetKeyState("Esc", "P") 
 
if((state_alt = 1)  and (state_alt_P = 0))	;假如Alt功能显示按下，但实际物理状态并没有按下的话，就将Alt键抬起来 
{ 
	Sleep,100 
	state_Alt := GetKeyState("Esc")	;获取Alt键的功能状态，用户或者程序按下为1，否则为0 
	state_Alt_P := GetKeyState("Esc", "P") 
	if((state_alt = 1)  and (state_alt_P = 0) and (state_CapsLock_P = 0)) 
	{ 
		send,{Esc} 
	} 
} 
 
return
;;Menu, Tray, Icon, %A_ScriptDir%\scripts\icon.ico

;; 引入各个模块
#include %A_ScriptDir%\scripts\alt-command.ahk
#include %A_ScriptDir%\scripts\str-command.ahk
#include %A_ScriptDir%\scripts\str-abbr.ahk
#include %A_ScriptDir%\scripts\win-command.ahk
#include %A_ScriptDir%\scripts\esc-command.ahk
#include %A_ScriptDir%\scripts\app.ahk
#include %A_ScriptDir%\ContextWheel.ahk

;; 清除键盘状态
$~*Esc::
   Send {Blind}{vkFFsc000}
Return

;; restart 重启脚本
:?:;re::
   Run *RunAs "%A_ScriptFullPath%"
ExitApp
return
