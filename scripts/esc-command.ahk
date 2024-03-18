

RAlt & space:: 
  send, {Esc}
return

;; 打开终端 
#If WinActive("ahk_exe code.exe")
RAlt & t::
^+!t::
  send, ^+t
return
#if

#If WinActive("ahk_exe chrome.exe") or WinActive("ahk_exe obsidian.exe")
^+!t::
RAlt & t::
  send, ^+i
return
#if 

^+!t::
RAlt & t::
  send, #3
return

;; 移动
RAlt & j::
  send {down 5}
return

RAlt & k::
  send {up 5}
return 

RAlt & l::
  send {right 20} 
return

RAlt & h::
  send {left 20}
return

;; 应用切换
RAlt & 1::
  send, #1
return

RAlt & 2::
  send, #2
return

RAlt & 3::
  send, #3
return

RAlt & 4::
  send, #4
return

RAlt & 5::
  send, #5
return

;; 打开, 关闭侧边栏 
#if WinActive("ahk_exe obsidian.exe")

RAlt & 9::
  send, ^+!0
return

RAlt & 0::
  send, ^+!9
return

#if

#if WinActive("ahk_exe code.exe")

RAlt & 9::
  send, ^b
return

#if

;; 页面路由
RAlt & q::
RAlt & LButton::
  send, !{left} 
return

RAlt & w::
RAlt & RButton::
  send, !{right} 
return

;; 回到桌面
RAlt & d::
  send, #d
return

;; 关闭页面
RAlt & b::
  send, ^w
return

;; 分栏
#If WinActive("ahk_exe obsidian.exe") or WinActive("ahk_exe code.exe")

RAlt & [::
  send, ^+!j
return

RAlt & ]::
  send, ^+!k
return

RAlt & \::
  send, ^\
return

RAlt & r::
  send, ^y
return

RAlt & e::
  send, ^z
return

;vscode 打开脚本文件夹
RAlt & /::
  run,cmd,C:\Users\12624\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup
  sleep, 200
  WinGet, active_id, PID, A 
  send, code{space}.{enter}
  run, taskkill /PID %active_id% /F,,Hide
return

;;vscode 
#IfWinActive, ahk_exe code.exe
  ;hover提示
RAlt & a::
  send,^k 
  sleep,100
  send,^i
return 

;代码提示 (metion)
RAlt & m::
  send, ^i
return

;跳转到 (in to the definetion)
RAlt & i::
  send, {f12}
return

; figure out the north
RAlt & n::
  send, ^+!z
return
#if

;搜索
RAlt & f::
  send, ^f
return

#If WinActive("ahk_exe chrome.exe") 
RAlt & g::
send, ^k
return
#if 

RAlt & g::
  send, ^+f
return

;关闭应用
RAlt & Delete::
  send, !{f4}
return 

RAlt & y::
  send, ^c
Return

RAlt & p::
  send, ^v
return

; ob 代码块格式化
#IfWinActive ahk_exe obsidian.exe

RAlt & n::
  send, !+s
return

; 模式转换
RAlt & m::
  send, ^{tab}
return
#if 

#If WinActive("ahk_exe code.exe")
RAlt & .::
send,^+[
return 
#if

RAlt & .::
  send, ^+.
return

RAlt & u::
  send, {f11}
return

RAlt & ,::
  send, {f2}
return

; 上下文菜单
RAlt & '::
  send, {AppsKey down}
return

RAlt & WheelUp::ShiftAltTab
RAlt & WheelDown::AltTab
