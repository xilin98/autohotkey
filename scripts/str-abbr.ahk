
;html
:?:---::
sendinput, <hr>
return


;markdown
:?:h1:: 
sendInput {#}{space}
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


;; 中文 引号
:?:;':: 
sendinput, `「」` 
return 

:?*:;co::
sendinput,console.log(){left 1}
return

:?:ret::
sendinput, returj{BackSpace}n
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



;; 引号 vim
:*?:q'::
sendinput,{right}{esc}bi'{esc}ea'
return 


:?:ddd::
FormatTime, CurrentDateTime,, yyyy/MM/dd
SendInput %CurrentDateTime%
return

; 生成js 代码块
:?:;j::
sendinput, ``
sendinput, ``
sendinput, ``
sendinput, js
return



;; ob  
#IfWinActive, ahk_exe obsidian.exe

:?:;@::
sendinput, {!}{[}{[}{^}{^}{]}{]}{left 2}
return


:?:;h::
sendinput, ``
sendinput, ``
sendinput, ``
sendinput, html
return

#if

; git 命令
:?:;gco::
SendInput, git checkout 
return

:?:;gbv::
sendinput, git branch -vaa
return

:?:;glo::
SendInput, git log --pretty=one
return

:?:;gcm::
SendInput, git commit -m
Return

:?:;gd::
SendInput, git add 
Return
