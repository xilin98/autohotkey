
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
 


 
 

