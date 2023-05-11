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

;;Menu, Tray, Icon, %A_ScriptDir%\scripts\icon.ico

;; 引入各个模块
#include %A_ScriptDir%\scripts\alt-command.ahk
#include %A_ScriptDir%\scripts\str-command.ahk
#include %A_ScriptDir%\scripts\str-abbr.ahk
#include %A_ScriptDir%\scripts\win-command.ahk
#include %A_ScriptDir%\scripts\esc-command.ahk
#include %A_ScriptDir%\scripts\app.ahk

;; 清除键盘状态
$~*Esc::
   Send {Blind}{vkFFsc000}
Return

;; restart 重启脚本
:?:;re::
   Run *RunAs "%A_ScriptFullPath%"
ExitApp
return