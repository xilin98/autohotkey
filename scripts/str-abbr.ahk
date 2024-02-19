
;; html 缩写
:?:---::
  send, <hr>
return

;; markdown 缩写
:?:h1:: 
  send {#}{space}
return

:?:h2::
  send {#}{#}{space}
return

:?:h3::
  send {#}{#}{#}{space}
return

:?:h4::
  send {#}{#}{#}{#}{space}
return

:?:h5::
  send {#}{#}{#}{#}{#}{space}
return

:?:h6::
  send {#}{#}{#}{#}{#}{#}{space}
return

;; 中文 引号
:?:;':: 
  send, `「」` 
return 

;; js keyword 缩写

; console.log
:?*:;co::
  send,console.log(){left 1}
return

; return
:?:ret::
  send, returj{BackSpace}n
return

; const
:?:;c::
  send, const
return

; js 代码块
:?:;j::
  send, ``
  send, ``
  send, ``
  send, js
return

:?:ddd::
  FormatTime, CurrentDateTime,, yyyy/MM/dd
  send %CurrentDateTime%
return

;; git 命令
:?:;gco::
  send, git checkout 
return

:?:;gbv::
  send, git branch -vaa
return

:?:;glo::
  send, git log --pretty=one
return

:?:;gcm::
  send, git commit -m
Return

:?:;gd::
  send, git add 
Return
