#Hotstring EndChars  )

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

:?:npp::
run,https://www.npmjs.com/
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

:?:cxx::
run, https://learn.cuixueshe.com/
return

:?:baa::
run, www.baidu.com
return

:?:zhh::
run, www.zhihu.com
return

:?:lee::
run, https://leetcode.cn/
return

:?:tyy::
run, https://www.typescriptlang.org/docs/
return

:?:loo::
run, https://lodash.com/docs/4.17.15 
return

;; files文件夹
; :?:woo::
; run, cmd.exe , C:\Users\12624\Desktop\files
; sleep, 200
; WinGet, active_id, PID, A 
; sendinput, code {space}.{enter}
; run, taskkill /PID %active_id% /F,,Hide
; return



;; 窗口
:?:;;x::
sendinput, !{f4}
return

;; ob  
#IfWinActive, ahk_exe obsidian.exe

:?:;ex::
SendInput, ^+!n
return

:?:;r:: 
sendinput, ^!j
return 

:?:;re:: 
sendinput, {#}re
sendinput, {esc} {esc}
return 

#if


; Rename

:?:;a::
sendinput {f2}
return

:?:;cc::
SendInput, {esc} {esc}
SendInput,  gg
SendInput, ^+.
return 

; ; 切换标签页
; :?:11::
; SendInput, ^1
; return

; :?:22::
; SendInput, ^2
; return

; :?:33::
; SendInput, ^3
; return

; :?:44::
; SendInput, ^4
; return

; :?:55::
; SendInput, ^5
; return

; 刷新
#If WinActive("ahk_exe chrome.exe") 
:?:rr::
sendinput, ^r
return
#if 

; vscode & obsidian 左右分屏
:?:vs-ob::
SendInput, #4
sleep, 500
SendInput, #{left}
SendInput, {esc}
SendInput, #2
Sleep, 500
sendInput, #{Right}
SendInput, {esc}
return


