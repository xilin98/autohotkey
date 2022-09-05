


; esc + t ==> 打开终端 
#If WinActive("ahk_exe code.exe")
~esc & t::
sendinput, ^+t
return 
#if


#If WinActive("ahk_exe chrome.exe") or WinActive("ahk_exe obsidian.exe")
~esc & t::
sendinput, ^+i
return


#if 

~esc & t::
sendinput, #3
return


; 移动
~esc & j::
sendinput {down 5}
return 

~esc & k::
sendinput {up 5}
return 

~esc & l::
sendinput {right 20} 
return

~esc & h::
sendinput {left 20}
return



;应用切换
~esc & 1::
sendinput, #1
return

~esc & 2::
sendinput, #2
return

~esc & 3::
sendinput, #3
return

~esc & 4::
sendinput, #4
return

~esc & 5::
sendinput, #5
return


~esc & 9::
sendinput, #6
return

~esc & 0::
sendinput, #7
return



;页面切换
~esc & q::
sendinput, !{left} 
return

~esc & w::
sendinput, !{right} 
return





;桌面
~esc & [::
sendInput, #^{left}
return 

~esc & ]::
sendInput, #^{right}
return

~esc & \::
sendinput, ^#d
return


~esc & BackSpace::
sendInput, ^#{f4}
return





~esc & r::
sendinput, ^y
return



;vscode 打开脚本文件夹
~esc & /::
run,cmd,C:\Users\12624\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup
sleep, 200
WinGet, active_id, PID, A 
sendInput, code{space}.{enter}
run, taskkill /PID %active_id% /F,,Hide
return


;;vscode 
#IfWinActive, ahk_exe code.exe
;hover提示
~esc & a::
sendinput,^k 
sleep,100
sendinput,^i
return 

;代码提示 (metion)
~esc & m::
sendinput, ^i
return

;跳转到 (in to the definetion)
~esc & i::
sendinput, {f12}
return


#if

;关闭应用
~esc & x:: 
sendinput, !{f4}
return


;tab 
~esc & space::
sendinput, {tab}
return


