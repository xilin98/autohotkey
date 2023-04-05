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
;; alt + 鼠标左键 返回
;; alt + 鼠标右键 前进
!,::
!LButton::
sendinput, !{left} 
return

!.::
!RButton::
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

;; vscode 代码智能提示  alt + n
!n::
sendinput, ^+!z
return
#if

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

!p::
sendinput, ^v
return

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