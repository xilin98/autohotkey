﻿
; 在开发者工具中调出切换面板和控制面板
#If WinActive("ahk_exe chrome.exe")
!p::
sendinput, ^+p
return

!o::
sendinput, ^p
return
#if 



;;移动
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


;;  enter
!space::
sendinput, {enter}
return



;; 继承部分ctrl 功能
!/::
sendInput, ^/
return

!s::
sendinput, ^s
return

!m::
sendinput, ^m
return


;; 桌面

;左边桌面
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
sendInput, ^#{f4}--
return
