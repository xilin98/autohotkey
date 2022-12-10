#if (mode="v-mode")

~esc::
mode := "n-mode"
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

;moving
w::
sendinput, +^{right}
return

b::
sendinput, +^{left}
return

h::
SendInput, +{left}
return

j::
SendInput, +{down}
return

k::
SendInput, +{up}
return

l::
SendInput, +{right}
return

0::
sendinput, +{home}
return

$::
sendinput, +{end}
return

;undo & redo
u::
SendInput, ^z
return

y::
sendinput, ^y

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

#if