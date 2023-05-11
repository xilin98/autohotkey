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
  SendInput, ^+t
  #if

  #If WinActive("ahk_exe chrome.exe") or WinActive("ahk_exe obsidian.exe")
    !t::
    sendinput, ^+i
  return
  #if

  !t::
    sendinput, #3
  return

  ;; 打开, 关闭侧边栏 (vscode obsidian) 左边 alt + 9 右边 alt + 0
  #if WinActive("ahk_exe obsidian.exe")
  !9::
  sendinput, ^+!0
return

!0::
  sendinput, ^+!9
return
#if

#if WinActive("ahk_exe code.exe")

!0::
  sendinput, ^0
return

#if

;; 页面路由 alt + , 返回 alt + . 前进
!,::
  sendinput, !{left}
return

!.::
  sendinput, !{right}
return

;; 关闭页面 alt + b
!b::
  sendinput, ^w
return

;; vscode  alt + a hover 提示
#IfWinActive, ahk_exe code.exe
!a::
  sendinput,^k
  sleep,100
  sendinput,^i
return

;; vscode 代码提示 alt +d
!d::
  sendinput, ^i
return

;; vscode 代码跳转 (in to the definetion) alt + i (f12)
!i::
  sendinput, {f12}
return

;; 搜索 alt + f 当前文件搜索 alt + g 全局搜搜索
!f::
  sendinput, ^f
return

#If WinActive("ahk_exe chrome.exe")
!g::
sendinput, ^k
return
#if

!g::
  sendinput, ^+f
return

;; 复制 黏贴 alt + y  alt + p
!y::
  sendinput, ^c
Return

;; 全屏 alt + u
!u::
  SendInput, {f11}
return

;; 重命名 alt + r
!r::
  SendInput, {f2}
return,

;; 移动 alt + h j k l
!h::
  sendInput, {left}
return

!j::
  sendInput, {down}
return

!k::
  sendInput, {up}
return

!l::
  sendInput, {right}
return

; 继承部分ctrl 功能 alt + / 注释 alt + s 保存 alt + m 字典
!/::
  sendInput, ^/
return

!s::
  sendinput, ^s
return

!m::
  sendinput, ^m
return

;; 桌面多开 alt + [ 左边桌面, alt + ] 右边桌面, alt+\ 新建桌面, alt + BackSpace 关闭桌面
![::
  sendInput, #^{left}
return

;右边桌面
!]::
  sendInput, #^{right}
return

;新建
!\::
  sendinput, ^#d
return

;关闭
!BackSpace::
  sendInput, ^#{f4}
return


;;---esc
esc::
Return

esc & space:: 
  SendInput, {esc}
return

;; 打开终端 
#If WinActive("ahk_exe code.exe")
esc & t::
^+!t::
  SendInput, ^+t
return
#if

#If WinActive("ahk_exe chrome.exe") or WinActive("ahk_exe obsidian.exe")
^+!t::
esc & t::
  sendinput, ^+i
return
#if 

^+!t::
esc & t::
  sendinput, #3
return

;; 移动
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

;; 应用切换
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

;; 打开, 关闭侧边栏 
#if WinActive("ahk_exe obsidian.exe")

esc & 9::
  sendinput, ^+!0
return

esc & 0::
  sendinput, ^+!9
return

#if

#if WinActive("ahk_exe code.exe")

esc & 9::
  sendinput, ^b
return

#if

;; 页面路由
esc & q::
esc & LButton::
  sendinput, !{left} 
return

esc & w::
esc & RButton::
  sendinput, !{right} 
return

;; 回到桌面
esc & d::
  sendinput, #d
return

;; 关闭页面
esc & b::
  sendinput, ^w
return

;; 分栏
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

esc & WheelUp::
  SendInput, {up 20}
return

esc & WheelDown::
  SendInput, {down 20}
return


;;---string
;; html 缩写

;; markdown 缩写
:?:h1:: 
  sendInput {#}{space}
return

:?:h2::
  sendinput {#}{#}{space}
return

:?:h3::
  sendinput {#}{#}{#}{space}
return

:?:h4::
  sendinput {#}{#}{#}{#}{space}
return

:?:h5::
  sendinput {#}{#}{#}{#}{#}{space}
return

:?:h6::
  sendinput {#}{#}{#}{#}{#}{#}{space}
return

;; 中文 引号
:?:;':: 
  sendinput, `「」` 
return 

;; js keyword 缩写

; console.log
:?*:;co::
  sendinput,console.log(){left 1}
return

; return
:?:ret::
  sendinput, returj{BackSpace}n
return

; const
:?:;c::
  sendinput, const
return

; js 代码块
:?:;j::
  sendinput, ``
  sendinput, ``
  sendinput, ``
  sendinput, js
return

:?:ddd::
  FormatTime, CurrentDateTime,, yyyy/MM/dd
  SendInput %CurrentDateTime%
return

;; git 命令
:?:;gco::
  SendInput, git checkout 
return

:?:;gbv::
  sendinput, git branch -vaa
return

:?:;glo::
  SendInput, git log --pretty=one
return

:?:;gcm::
  SendInput, git commit -m
Return

:?:;gd::
  SendInput, git add 
Return












;;---app
;; v2rayN 的快捷键 v  测试
#IfWinActive, ahk_exe v2rayN.exe
  v::
    SendInput, ^a
    sendInput, ^p
    sleep, 2000
    sendinput, {enter}
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
    SendInput, {f8}
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
  SendInput, ^+o
return

;;---#
;;分屏
#[::
  sendinput, #{left}
return

#]::
  sendinput, #{right}
return

;;关闭应用
#x::
  sendInput, !{f4}
return
