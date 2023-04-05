;;分屏
#[::
  sendinput, #{left}
return

#]::
  sendinput, #{right}
return

;;关闭应用
#x::
  sendInput, !{f4}
return