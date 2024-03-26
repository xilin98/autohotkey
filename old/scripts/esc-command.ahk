>!space::
send, { Esc }
return

;; 打开终端
#If WinActive("ahk_exe code.exe")
>!t::
^+!t::
send, ^ +t
return
#if

#If WinActive("ahk_exe chrome.exe") or WinActive("ahk_exe obsidian.exe")
^+!t::
>!t::
send, ^ +i
return
#if

^+!t::
>!t::
send, #3
return

;; 移动
>!j::
send { down 5 }
return

>!k::
send { up 5 }
return

>!l::
send { right 20 }
return

>!h::
send { left 20 }
return

;; 应用切换
>!1::
send, #1
return

>!2::
send, #2
return

>!3::
send, #3
return

>!4::
send, #4
return

>!5::
send, #5
return

;; 打开, 关闭侧边栏
#if WinActive("ahk_exe obsidian.exe")

>!9::
send, ^ +!0
return

>!0::
send, ^ +!9
return

#if

#if WinActive("ahk_exe code.exe")

>!9::
send, ^ b
return

#if

;; 页面路由
>!q::
>!LButton::
send, ! { left }
return

>!w::
>!RButton::
send, ! { right }
return

;; 回到桌面
>!d::
send, #d
return

;; 关闭页面
>!b::
send, ^ w
return

;; 分栏
#If WinActive("ahk_exe obsidian.exe") or WinActive("ahk_exe code.exe")

>![::
send, ^ +!j
return

>!]::
send, ^ +!k
return

>!\::
send, ^ \
return

>!r::
send, ^ y
return

>!e::
send, ^ z
return

;vscode 打开脚本文件夹
>!/::
run, cmd, C: \Users\12624\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup
sleep, 200
WinGet, active_id, PID, A
send, code { space }. {
  enter}
run, taskkill / PID %active_id% / F, , Hide
return

;;vscode
#IfWinActive, ahk_exe code.exe
;hover提示
>!a::
send, ^ k
sleep, 100
send, ^ i
return

;代码提示 (metion)
>!m::
send, ^ i
return

;跳转到 (in to the definetion)
>!i::
send, { f12 }
return

; figure out the north
>!n::
send, ^ +!z
return
#if

;搜索
>!f::
send, ^ f
return

#If WinActive("ahk_exe chrome.exe")
>!g::
send, ^ k
return
#if

>!g::
send, ^ +f
return

;关闭应用
>!Delete::
send, ! { f4 }
return

>!y::
send, ^ c
Return

>!p::
send, ^ v
return

; ob 代码块格式化
#IfWinActive ahk_exe obsidian.exe

>!n::
send, !+s
return

; 模式转换
>!m::
send, ^ { tab }
return
#if

#If WinActive("ahk_exe code.exe")
>!.::
send, ^ +[
  return
  #if
  >!.::
  send, ^ +.
  return
  >!u::
  send, { f11 }
  return
  >!,::
  send, { f2 }
  return
  ; 上下文菜单
  >!'::
  send, { AppsKey down }
  return
  >!WheelUp::ShiftAltTab
  >!WheelDown::AltTab
