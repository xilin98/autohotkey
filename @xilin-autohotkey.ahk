;;---全局
#Hotstring EndChars ) )
#SingleInstance Force
#MaxHotkeysPerInterval 200
#InstallKeybdHook
#UseHook


SetKeyDelay, -1 

SetWorkingDir %A_ScriptDir%

#Persistent  ; 保持脚本持续运行
SetTimer, CheckKeys, 100  ; 每100毫秒检查一次按键状态

CheckKeys:
    Loop, 256  ; 检查每个按键（ASCII值）
    {
        key := Format("SC{:X}", A_Index)  ; 将按键编号转换为扫描码
        If GetKeyState(key, "P")  ; 如果按键处于按下状态
        {
            KeyWait, %key%, T0.1  ; 等待0.1秒看按键是否被释放
            If ErrorLevel  ; 如果按键仍然处于按下状态
            {
                If !GetKeyState(key, "P")  ; 再次检查，防止在检查过程中按键被释放
                    continue
                Send, {%key% Up}  ; 强制发送按键释放命令
            }
        }
    }
return


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
