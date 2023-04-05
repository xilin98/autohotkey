;; v2rayN 的快捷键 v 更新 测试
#IfWinActive, ahk_exe v2rayN.exe
  v::
    SendInput, ^a
    sendInput, ^p
    sleep, 2000
    sendinput, {enter}
  return
  #if