#Hotstring EndChars  `t

:?*:rrr::
Loop files, %A_ScriptDir%/scripts/*.ahk
{
    run, %A_LoopFileFullPath%
    sleep, 100
    sendInput, {enter}
}
return
