
;[#]

#[::
sendinput, #{left}
return

#]::
sendinput, #{right}
return

#u::
sendinput, {f11}
return

#z::
sendinput, #{4}
return

#x::
sendInput, !{f4}
return
 
#q::
sendinput, ^{w}
return

#a::
sendInput, {f2}
return

#o::
sendinput, ^c
run, D:\program\Everything-1.4.1.1015.x64\Everything.exe 
sleep, 200
sendinput, %clipboard%
return 


#/::
run  cmd 
sleep,200
sendinput, cd{space}C:\Users\12624\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup{enter}
WinGet, active_id, PID, A
sleep, 500
sendinput code {space} . {enter}
sleep, 1000
run, taskkill /PID %active_id% /F,,Hide
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

~esc & c::
sendinput ^+t
return

~esc & f::
sendinput, ^f
return

~esc & g::
sendinput, ^+f
return 

~esc & a::
sendinput, +!f
return

