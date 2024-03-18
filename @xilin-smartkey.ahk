#Requires AutoHotkey v2.0
;; ># 全局配置

; >## 设置在触发热字符串后可以用作触发字符的字符集
Hotstring("EndChars", " ")

; >## 确保脚本的单一实例运行
#SingleInstance Force
#UseHook

SetKeyDelay(-1)

SetWorkingDir(A_ScriptDir)
if (!A_IsAdmin)
{ 
   Run("*RunAs " A_ScriptFullPath)
   ExitApp
}

:*:;;re::{Reload}

; ># Alt 有关热键
; >## Alt + t 打开 终端
!t::{
  if WinActive("ahk_exe code.exe")
    {
    Send("^+t")
    return
    }

  if WinActive("ahk_exe chrome.exe") or WinActive("ahk_exe obsidian.exe")
    {
    Send('^+i')
    return
    }
  Send('#3')
}
return

!u::
{
  Send("{f11}")
  return
}

; >## 移动 alt + h j k l
!h:: 
{
  send('{left}')
  return
}

!j:: 
{
  send('{down}')
  return
}

!k:: 
{
  send('{up}')
  return
}

!l:: 
{
  send('{right}')
  return
}

; >## 继承部分ctrl 功能 alt + / 注释 alt + s 保存 alt + m 字典

!/::
{
  send("^/")
  return
}

!s::
{
  send("^s")
  return
}

!m::
{
  send("^m")
  return
}

![::
{
  send("#^{left}")
  return
}

!\::
{
  send("^#d")
  return
}

!BackSpace::{
  send("^#{f4}")
  return
}

; ># Esc 有关热键
esc::
{
  send("{RAlt}")
  return
}

RAlt & space:: {
  send("{esc}")
  return
}
     

RAlt & t::
{
  if WinActive("ahk_exe code.exe")
    {
    Send("^+t")
    return
    }

  if WinActive("ahk_exe chrome.exe") or WinActive("ahk_exe obsidian.exe")
    {
    Send('^+i')
    return
    }
  Send('#3')
  return
}

; >## 移动导航
RAlt & h::{
  send("{left 5}")
}

RAlt & j::{
  send("{down 5}")
}

RAlt & k::{
  send("{up 5}")
}

RAlt & l::{
  send("{left 5}")
}


; >## 应用切换

RAlt & 1:: {
  send("#1")
}

RAlt & 2:: {
  send("#2")
}

RAlt & 3:: {
  send("#3")
}

RAlt & 4:: {
  send("#4")
}

RAlt & 5:: {
  send("#5")
}
