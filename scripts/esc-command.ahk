esc & space::
SendInput,  {esc}
return

; esc + t ==> 打开终端 
#If WinActive("ahk_exe code.exe")
esc & t::
SendInput, ^+t
#if
                 
#If WinActive("ahk_exe chrome.exe") or WinActive("ahk_exe obsidian.exe")
esc & t::
sendinput, ^+i
return
#if 

esc & t::
sendinput, #3
return


;移动
esc & j::
sendinput {down 5}
return

esc & k::
sendinput {up 5}
return 

esc & l::
sendinput {right 20} 
return

esc & h::
sendinput {left 20}
return

;应用切换
esc & 1::
sendinput, #1
return

esc & 2::
sendinput, #2
return

esc & 3::
sendinput, #3
return

esc & 4::
sendinput, #4
return

esc & 5::
sendinput, #5
return



;打开, 关闭侧边栏 ob
#if WinActive("ahk_exe obsidian.exe")

esc & 9::
sendinput, ^+!0
return

esc & 0::
sendinput, ^+!9
return

#if

; 打开 、 关闭侧边栏 vscode
#if WinActive("ahk_exe code.exe")

esc & 9::
sendinput, ^b
return

#if



;页面切换
esc & q::
sendinput, !{left} 
return

esc & w::
sendinput, !{right} 
return

; 回到桌面
esc & d::
sendinput, #d
return


; 关闭页面
esc & b::
sendinput, ^w
return


#If WinActive("ahk_exe obsidian.exe") or WinActive("ahk_exe code.exe")

esc & [::
sendinput, ^+!j
return

esc & ]::
sendinput, ^+!k
return

esc & \::
sendinput, ^\
return

#if




esc & r::
sendinput, ^y
return

esc & e::
sendinput, ^z
return



;vscode 打开脚本文件夹
esc & /::
run,cmd,C:\Users\12624\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup
sleep, 200
WinGet, active_id, PID, A 
sendInput, code{space}.{enter}
run, taskkill /PID %active_id% /F,,Hide
return


;;vscode 
#IfWinActive, ahk_exe code.exe
;hover提示
esc & a::
sendinput,^k 
sleep,100
sendinput,^i
return 



;代码提示 (metion)
esc & m::
sendinput, ^i
return

;跳转到 (in to the definetion)
esc & i::
sendinput, {f12}
return

; figure out the north
esc & n::
sendinput, ^+!z
return
#if

;搜索
esc & f::
sendinput, ^f
return

#If WinActive("ahk_exe chrome.exe") 
esc & g::
sendinput, ^k
return
#if 


esc & g::
sendinput, ^+f
return


;关闭应用
esc & Delete::
SendInput, !{f4}
return 


esc & y::
sendinput, ^c
Return

esc & p::
sendinput, ^v
return

; ob 代码块格式化
#IfWinActive ahk_exe obsidian.exe

esc & n::
sendinput, !+s
return

; 模式转换
esc & m::
sendinput, ^{tab}
return
#if 

#If WinActive("ahk_exe code.exe")
esc & .::
sendinput,^+[
return 
#if

esc & .::
SendInput, ^+.
return

esc & u::
SendInput, {f11}
return

esc & ,::
SendInput, {f2}
return

; 上下文菜单
esc & '::
sendinput, {AppsKey down}
return

esc & enter::
sendinput, ^w
return

esc & o::
sendinput, {esc}
return

esc & WheelUp::
SendInput, {left, 5}
return

esc & WheelDown::
SendInput, {right, 5}
return