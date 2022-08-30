
#if (mode = "n-mode")

i::
mode := "close"
Gosub, showMode
return

v::
mode := "v-mode"
Gosub, showMode
return 


z::
mode := "z-mode"
Gosub, showMode
return 


!z::
mode := "z-mode"
Gosub, showMode
return 

+v::
mode := "v-mode-cap"
Gosub, showMode
sendinput, {home}
return


;moving
w::
sendinput, ^{right}
return

b::
sendinput, ^{left}
return

h::
SendInput, {left}
return

j::
SendInput, {down}
return

k::
SendInput, {up}
return

l::
SendInput, {right}
return

0::
sendinput, {home}
return

$::
sendinput, {end}
return



;undo & redo
u::
SendInput, ^z
return

y::
SendInput, ^y
return


x::
Clipboard := ""
sendinput, ^c
Sleep, 10
if(Clipboard=""){
    SendInput, +{right}
}
sleep, 10
sendinput, ^x

sleep, 10

return

#if
