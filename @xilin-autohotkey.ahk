;;---全局
#Hotstring EndChars ) )
#SingleInstance Force
#MaxHotkeysPerInterval 200
#InstallKeybdHook
#UseHook

SetBatchLines, 10ms
SetKeyDelay, -1

SetWorkingDir %A_ScriptDir%

;==================== 解决键盘粘滞问题 ============================================================
; 由于 auhotkey 的某些原因, 会在发生 alt 键盘处于按下状态的情况
; 现在应该没有任何问题了
; 我只能说这种非常有影响的问题还是需要解决一下的
SetTimer, timer1, 100		;用来实时监测 
return 

timer1:			;每隔1秒检查一下电脑上的这些个窗口是否存在，存在的话，就将其关闭 
	; MsgBox,Ctrl键目前处于假按状态 
	state_Alt := GetKeyState("Alt")	;获取Alt键的功能状态，用户或者程序按下为1，否则为0 
	state_Alt_P := GetKeyState("Alt", "P") 
if((state_alt = 1)  and (state_alt_P = 0))	;假如Alt功能显示按下，但实际物理状态并没有按下的话，就将Alt键抬起来 
{ 
	Sleep,100 
	state_Alt := GetKeyState("Alt")	;获取Alt键的功能状态，用户或者程序按下为1，否则为0 
	state_Alt_P := GetKeyState("Alt", "P") 
	if((state_alt = 1)  and (state_alt_P = 0)) 
	{ 
		send,{Alt} 
		send,{RAlt} 
	} 
}
return

;===================== 解决键盘粘滞问题 ============================================================

;; Always run your script as admin
if not A_IsAdmin
{ 
   Run *RunAs "%A_ScriptFullPath%"
   ExitApp
}

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
