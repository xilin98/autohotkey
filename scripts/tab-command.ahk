




;;移动
tab & h::
sendinput, {left 20}
return

tab & j::
sendinput, {down 5}
return

tab & k::
sendinput, {up 5}
return

tab & l::
sendinput, {right 20}
return




;; Listary
tab & o::
sendinput,{ctrl} 
sleep, 100
sendinput,{ctrl} 
return


;用vscode 打开  Listary 文件夹 everything
#if WinActive("ahk_exe Listary.exe") or WinActive("ahk_exe explore.exe") or WinActive("ahk_exe everything.exe")
tab & i::
sendinput, ^c
run,cmd,%clipboard% 
sleep,500
WinGet, active_id, PID, A 
sendinput, code{space}.{enter}
sleep,500
run, taskkill /PID %active_id% /F,,Hide
return
#if




;;还原tab
tab & space::
sendInput, {tab}
return






;;;窗口
tab & u::
sendInput, {f11}
return

;tab + \ 拆分窗口
;tab + [ 焦点移向左边窗口 
;tab + ] 焦点移向右边窗口
#IfWinActive, ahk_exe code.exe
;;拆分

tab & \::
sendinput, ^\
return

#if

#If WinActive("ahk_exe obsidian.exe") or WinActive("ahk_exe code.exe")

tab & [::
sendinput, ^+!j
return

tab & ]::
sendinput, ^+!k
return

; 搜索
tab & r::
sendinput, ^f
return

tab & t::
sendinput, ^+f
return 

#if







;; 复制 粘贴
tab & y::
sendinput, ^s
return


tab & p::
sendinput, ^v
return 



;; vscode 快速修复
tab & w::
sendinput, ^+!z
return

;打开, 关闭侧边栏 ob
#if WinActive("ahk_exe obsidian.exe")

tab & 9::
sendinput, ^+!0
return

tab & 0::
sendinput, ^+!9
return

#if

; 打开 、 关闭侧边栏 vscode
#if WinActive("ahk_exe code.exe")

tab & 9::
sendinput, ^b
return

#if
