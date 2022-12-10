;;;[alt]

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





; enter
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




;桌面
![::
sendInput, #^{left}
return 

!]::
sendInput, #^{right}
return

!\::
sendinput, ^#d
return


!BackSpace::
sendInput, ^#{f4}
return


; ~alt::
;     If (A_ThisHotkey = A_PriorHotkey and A_TimeSincePriorHotkey < 200)
;         SendInput,{f7}
; Return

