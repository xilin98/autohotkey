#IfWinActive, ahk_exe code.exe 
~esc & t::
sendinput, ^+t
return 
#if

#IfWinActive, ahk_exe chrome.exe 
~esc & t::
sendinput, ^+i
return
#if 

#IfWinActive, ahk_exe obsidian.exe 
~esc & t::
sendinput, ^+i
return
#if 


~esc & t::
run, powershell
return 

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

~esc & f::
sendinput, ^f
return

~esc & g::
sendinput, ^+f
return 


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

~esc & tab::
sendinput, !{tab}
return

~esc & q::
sendinput, !{left} 
return

~esc & w::
sendinput, !{right} 
return

~esc & o::
run, D:\program\Everything-1.4.1.1015.x64\Everything.exe 
return 