#Hotstring EndChars  )

;html
:?:---::
sendinput, <hr>
return



;markdown
:?:h1:: sendInput {#}{space}
return

:?:h2::
sendinput {#}{#}{space}
return

:?:h3::
sendinput {#}{#}{#}{space}
return

:?:h4::
sendinput {#}{#}{#}{#}{space}
return

:?:h5::
sendinput {#}{#}{#}{#}{#}{space}
return

:?:h6::
sendinput {#}{#}{#}{#}{#}{#}{space}
return



;;js
:?:;fi::
sendinput, for(let{space}i{space}={space}0;i{space}<{space};{space}i{+}{+}){{}{enter}
return

:?:;fj::
sendinput, for(let{space}j{space}={space}0;j{space}<{space};{space}j{+}{+}){{}{enter}
return

:?:;fe::
sendinput, for(let{space}item{space}of ){{} {enter}
return

:?:;i::
sendinput, if(){{}{enter}
return

:?*:;co::
sendinput,console.log(){left 1}
return

:?:ret::
sendinput, returj{BackSpace}n
return

::;fn::
sendinput, function
return


:?:;c::
sendinput, const
return


;ob 注释 js
#IfWinActive ahk_exe obsidian.exe
:?:**::
sendinput, /* */{left}{left}
return
#if



;;单词
:?:;;jq::
sendinput,jQuery
return

:?:;;js::
sendinput,javaScript
return




;; 引号 vim
:*?:q'::
sendinput,{right}{esc}bi'{esc}ea'
return 

:?:ddd::
FormatTime, CurrentDateTime,, yyyy/MM/dd
SendInput %CurrentDateTime%
return




;; ob  
#IfWinActive, ahk_exe obsidian.exe
:?:;@::
sendinput, {!}{[}{[}{^}{^}{]}{]}{left 2}
return
#if
