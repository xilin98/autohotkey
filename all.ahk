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


;; 清除键盘状态
$~*Esc::
   Send {Blind}{vkFFsc000}
Return

;; restart 重启脚本
:?:;re::
   Run *RunAs "%A_ScriptFullPath%"
ExitApp
return

;; ---alt
;; 打开终端 alt + t
#If WinActive("ahk_exe code.exe")
  !t::
  send, ^+t
  #if

  #If WinActive("ahk_exe chrome.exe") or WinActive("ahk_exe obsidian.exe")
    !t::
    send, ^+i
  return
  #if

  !t::
    send, #3
  return

  ;; 打开, 关闭侧边栏 (vscode obsidian) 左边 alt + 9 右边 alt + 0
  #if WinActive("ahk_exe obsidian.exe")
  !9::
  send, ^+!0
return

!0::
  send, ^+!9
return
#if

#if WinActive("ahk_exe code.exe")

!0::
  send, ^0
return

#if

;; 页面路由 alt + , 返回 alt + . 前进
!,::
  send, !{left}
return

!.::
  send, !{right}
return

;; 关闭页面 alt + b
!b::
  send, ^w
return

;; vscode  alt + a hover 提示
#IfWinActive, ahk_exe code.exe
!a::
  send,^k
  sleep,100
  send,^i
return

;; vscode 代码提示 alt +d
!d::
  send, ^i
return

;; vscode 代码跳转 (in to the definetion) alt + i (f12)
!i::
  send, {f12}
return

;; 搜索 alt + f 当前文件搜索 alt + g 全局搜搜索
!f::
  send, ^f
return

#If WinActive("ahk_exe chrome.exe")
!g::
send, ^k
return
#if

!g::
  send, ^+f
return

;; 复制 黏贴 alt + y  alt + p
!y::
  send, ^c
Return

;; 全屏 alt + u
!u::
  send, {f11}
return

;; 重命名 alt + r
!r::
  send, {f2}
return,

;; 移动 alt + h j k l
!h::
  send, {left}
return

!j::
  send, {down}
return

!k::
  send, {up}
return

!l::
  send, {right}
return

; 继承部分ctrl 功能 alt + / 注释 alt + s 保存 alt + m 字典
!/::
  send, ^/
return

!s::
  send, ^s
return

!m::
  send, ^m
return

;; 桌面多开 alt + [ 左边桌面, alt + ] 右边桌面, alt+\ 新建桌面, alt + BackSpace 关闭桌面
![::
  send, #^{left}
return

;右边桌面
!]::
  send, #^{right}
return

;新建
!\::
  send, ^#d
return

;关闭
!BackSpace::
  send, ^#{f4}
return


;;---esc
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

esc & WheelUp::
  send, {up 20}
return

esc & WheelDown::
  send, {down 20}
return


;;---string
;; html 缩写

;; markdown 缩写
:?:h1:: 
  send {#}{space}
return

:?:h2::
  send {#}{#}{space}
return

:?:h3::
  send {#}{#}{#}{space}
return

:?:h4::
  send {#}{#}{#}{#}{space}
return

:?:h5::
  send {#}{#}{#}{#}{#}{space}
return

:?:h6::
  send {#}{#}{#}{#}{#}{#}{space}
return

;; 中文 引号
:?:;':: 
  send, `「」` 
return 

;; js keyword 缩写

; console.log
:?*:;co::
  send,console.log(){left 1}
return

; return
:?:ret::
  send, returj{BackSpace}n
return

; const
:?:;c::
  send, const
return

; js 代码块
:?:;j::
  send, ``
  send, ``
  send, ``
  send, js
return

:?:ddd::
  FormatTime, CurrentDateTime,, yyyy/MM/dd
  send %CurrentDateTime%
return

;; git 命令
:?:;gco::
  send, git checkout 
return

:?:;gbv::
  send, git branch -vaa
return

:?:;glo::
  send, git log --pretty=one
return

:?:;gcm::
  send, git commit -m
Return

:?:;gd::
  send, git add 
Return












;;---app
;; v2rayN 的快捷键 v  测试
#IfWinActive, ahk_exe v2rayN.exe
  v::
    send, ^a
    send, ^p
    sleep, 2000
    send, {enter}
  return
  #if

  ; ;; 双击右键 --> quiker 面板

  ; ; 设置一个全局变量，用于存储上次右键点击的时间
  ; global lastRightClickTime := 0

  ; ; 右键的热键
  ; ~RButton::
  ;     ; 获取当前时间
  ;     currentTime := A_TickCount

  ;     ; 计算两次点击之间的间隔
  ;     elapsedTime := currentTime - lastRightClickTime

  ;     ; 如果两次点击间隔在 500 毫秒内，认为是双击
  ;     if (elapsedTime < 500) {
  ;         ; 发送 Ctrl + Shift + Alt + L
  ;         Send, ^+!l
  ;     } 

  ;     ; 更新上次右键点击的时间
  ;     lastRightClickTime := currentTime
  ; return

  RShift:: 
    send, {f8}
  return


;; 网址
:?:goo::
  run, https://www.google.com
return

:?:gpp::
  run, https://chat.openai.com/chat
return

:?:bii::
  run,https://www.bilibili.com/account/history?spm_id_from=333.788.0.0
return

:?:noo::
  run, https://www.notion.so/cd31967273e44bb588d59ac94f38014b
return

:?:auu::
  run, https://wyagd001.github.io/zh-cn/docs/Tutorial.htm
return

:?:gii::
  run, https://github.com/xilin98
return

:?:baa::
  run, https://www.baidu.com
return

:?:zhh::
  run, https://www.zhihu.com
return

:?:lee::
  run, https://leetcode.cn/
return

;; 跳到代码块
:?:;@::
  send, ^+o
return

;;---#
;;分屏
#[::
  send, #{left}
return

#]::
  send, #{right}
return

;;关闭应用
#x::
  send, !{f4}
return
