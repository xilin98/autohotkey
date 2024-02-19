esc::
Return

esc & space:: 
  send, {esc}
return

;; 打开终端 
#If WinActive("ahk_exe code.exe")
esc & t::
^+!t::
  send, ^+t
return
#if

#If WinActive("ahk_exe chrome.exe") or WinActive("ahk_exe obsidian.exe")
^+!t::
esc & t::
  send, ^+i
return
#if 

^+!t::
esc & t::
  send, #3
return

;; 移动
esc & j::
  send {down 5}
return

esc & k::
  send {up 5}
return 

esc & l::
  send {right 20} 
return

esc & h::
  send {left 20}
return

;; 应用切换
esc & 1::
  send, #1
return

esc & 2::
  send, #2
return

esc & 3::
  send, #3
return

esc & 4::
  send, #4
return

esc & 5::
  send, #5
return

;; 打开, 关闭侧边栏 
#if WinActive("ahk_exe obsidian.exe")

esc & 9::
  send, ^+!0
return

esc & 0::
  send, ^+!9
return

#if

#if WinActive("ahk_exe code.exe")

esc & 9::
  send, ^b
return

#if

;; 页面路由
esc & q::
esc & LButton::
  send, !{left} 
return

esc & w::
esc & RButton::
  send, !{right} 
return

;; 回到桌面
esc & d::
  send, #d
return

;; 关闭页面
esc & b::
  send, ^w
return

;; 分栏
#If WinActive("ahk_exe obsidian.exe") or WinActive("ahk_exe code.exe")

esc & [::
  send, ^+!j
return

esc & ]::
  send, ^+!k
return

esc & \::
  send, ^\
return

esc & r::
  send, ^y
return

esc & e::
  send, ^z
return

;vscode 打开脚本文件夹
esc & /::
  run,cmd,C:\Users\12624\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup
  sleep, 200
  WinGet, active_id, PID, A 
  send, code{space}.{enter}
  run, taskkill /PID %active_id% /F,,Hide
return

;;vscode 
#IfWinActive, ahk_exe code.exe
  ;hover提示
esc & a::
  send,^k 
  sleep,100
  send,^i
return 

;代码提示 (metion)
esc & m::
  send, ^i
return

;跳转到 (in to the definetion)
esc & i::
  send, {f12}
return

; figure out the north
esc & n::
  send, ^+!z
return
#if

;搜索
esc & f::
  send, ^f
return

#If WinActive("ahk_exe chrome.exe") 
esc & g::
send, ^k
return
#if 

esc & g::
  send, ^+f
return

;关闭应用
esc & Delete::
  send, !{f4}
return 

esc & y::
  send, ^c
Return

esc & p::
  send, ^v
return

; ob 代码块格式化
#IfWinActive ahk_exe obsidian.exe

esc & n::
  send, !+s
return

; 模式转换
esc & m::
  send, ^{tab}
return
#if 

#If WinActive("ahk_exe code.exe")
esc & .::
send,^+[
return 
#if

esc & .::
  send, ^+.
return

esc & u::
  send, {f11}
return

esc & ,::
  send, {f2}
return

; 上下文菜单
esc & '::
  send, {AppsKey down}
return

; esc & WheelUp::
;   send, ShiftAltTab
; return

; esc & WheelDown::
;   send, AltTab
; return
