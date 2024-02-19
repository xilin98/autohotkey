;; v2rayN 的快捷键 v 测试
#IfWinActive, ahk_exe v2rayN.exe
  v::
    send, ^a
    send, ^p
    sleep, 2000
    send, {enter}
  return
#if

  ; ;; 双击右键 --> quiker 面板

  ; ; 设置一个全局变量，用于存储上次右键点击的时间
  ; global lastRightClickTime := 0

  ; ; 右键的热键
  ; ~RButton::
  ;     ; 获取当前时间
  ;     currentTime := A_TickCount

  ;     ; 计算两次点击之间的间隔
  ;     elapsedTime := currentTime - lastRightClickTime

  ;     ; 如果两次点击间隔在 500 毫秒内，认为是双击
  ;     if (elapsedTime < 500) {
  ;         ; 发送 Ctrl + Shift + Alt + L
  ;         Send, ^+!l
  ;     } 

  ;     ; 更新上次右键点击的时间
  ;     lastRightClickTime := currentTime
  ; return

  RShift:: 
    send, {f8}
  return
