
#if (mode="z-mode")



i::
mode:="close"
Gosub, showMode
return

;routing <-- & -->
q::
sendinput, !{left}
return


w::
sendinput, !{right}
return

;close tab
x::
sendinput, ^w
return

+x::
sendinput, !{f4}

;search loclal & search global
f::
sendinput, ^f
return 


g::
sendinput, ^+f
return


;切换应用
1::
SendInput, #1
return

2::
SendInput, #2
return

3::
SendInput, #3
return

4::
SendInput, #4
return

5::
SendInput, #5
return

6::
SendInput, #6
return

;  t ==> 打开终端 
t::
If (WinActive("ahk_exe code.exe")) {
    sendinput, ^+t
}
If (WinActive("ahk_exe chrome.exe") or WinActive("ahk_exe obsidian.exe")){
    sendinput, ^+i
}
return 


p::
sendinput, !p
return

+p::
SendInput, !{f4}
return

o::
sendinput, !o
return

#if

