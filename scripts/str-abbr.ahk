
;; html 缩写
:?:---::
  sendinput, <hr>
return

;; markdown 缩写
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

;; js keyword 缩写
; console.log
:?*:;co::
  sendinput,console.log(){left 1}
return

; return
:?:ret::
  sendinput, returj{BackSpace}n
return

;const
:?:;c::
  sendinput, const
return
; js 代码块
:?:;j::
  sendinput, ``
  sendinput, ``
  sendinput, ``
  sendinput, js
return

:?:ddd::
  FormatTime, CurrentDateTime,, yyyy/MM/dd
  SendInput %CurrentDateTime%
return

;; git 命令
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
