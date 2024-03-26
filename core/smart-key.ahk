;; 这是核心文件, 必须准确和可靠
;; 使用前先使用 CapsToRAlt 把 CapsLock 映射为 RAlt 键
#Requires AutoHotkey v2.0
;; ># 全局配置

; >## 将空格设置为触发键
#Hotstring EndChars `s

; >## 确保脚本的单一实例运行
#SingleInstance Force

; >## 使用键盘钩子
#UseHook true

; 启动目录作为工作目录
SetWorkingDir A_InitialWorkingDir

if (!A_IsAdmin) {
  Run("*RunAs " A_ScriptFullPath)
  ExitApp
}

; >## 重启脚本
:*:;re::
{
  Reload
}
; >## 解决键盘粘滞问题
SetTimer(CheckKeys, 100)  ; 每100毫秒检查一次按键状态
keys := "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890"
  . "F1F2F3F4F5F6F7F8F9F10F11F12"
  . "!@#$%^&*()_+"
  . "UpDownLeftRightSpaceCtrlAltShiftEnterTab"
CheckKeys() {
  for index, key in StrSplit(keys)
  {
    pressState := KeyWait(key, "T0.1")  ; 等待0.1秒看按键是否被释放
    If (!pressState)  ; 如果按键仍然处于按下状态
    {
      If !GetKeyState(key, "P")
      {
        SendInput("{" . key . "up}")  ; 强制发送按键释放命令
      }
    }
  }
}

; ># 为测试准备，打印字符串
:*:;d::
{
  MsgBox("111")
}


; ># Alt 有关热键
; >## Alt + t 打开 终端
!t:: {
  if WinActive("ahk_exe code.exe")
  {
    SendInput("^+t")
    return
  }

  if WinActive("ahk_exe chrome.exe") or WinActive("ahk_exe obsidian.exe")
  {
    SendInput('^+i')
    return
  }
  SendInput('#3')
}
return

!u::
{
  SendInput("^z")
  return
}

; >## 移动 alt + h j k l
!h::
{
  SendInput('{left}')
  return
}

!j::
{
  SendInput('{down}')
  return
}

!k::
{
  SendInput('{up}')
  return
}

!l::
{
  SendInput('{right}')
  return
}

; >## 继承部分ctrl 功能 alt + / 注释 alt + s 保存 alt + m 字典

!/::
{
  SendInput("^/")
  return
}

!s::
{
  SendInput("^s")
  return
}

!m::
{
  SendInput("^m")
  return
}

![::
{
  SendInput("#^{left}")
  return
}

!\::
{
  SendInput("^#d")
  return
}

!BackSpace:: {
  SendInput("^#{f4}")
  return
}

; >#  有关热键
esc::
{
  SendInput("{RAlt}")
  return
}

>!space:: {
  SendInput("{esc}")
  return
}


>!t::
{
  if WinActive("ahk_exe code.exe")
  {
    SendInput("^+t")
    return
  }

  if WinActive("ahk_exe chrome.exe") or WinActive("ahk_exe obsidian.exe")
  {
    SendInput('^+i')
    return
  }
  SendInput('#3')
  return
}

; >## 移动导航
>!h:: {
  SendInput("{left 5}")
}

>!j:: {
  SendInput("{down 5}")
}

>!k:: {
  SendInput("{up 5}")
}

>!l:: {
  SendInput("{right 5}")
}


; >## 应用切换

>!1:: {
  SendInput("#1")
}

>!2:: {
  SendInput("#2")
}

>!3:: {
  SendInput("#3")
}

>!4:: {
  SendInput("#4")
}

>!5:: {
  SendInput("#5")
}


; >## 复制 & 粘贴
>!p:: {
  SendInput("^v")
}

>!y:: {
  SendInput("^c")
}

; ># 字符串命令
; ># 打开网址
:?:goo::
{
  run "https://www.google.com"
}

:?:gpp:: {
  run "https://chat.openai.com/chat"
}

:?:bii:: {
  run "https://www.bilibili.com/account/history?spm_id_from=333.788.0.0"
}

:?:noo::
{
  run "https://www.notion.so/cd31967273e44bb588d59ac94f38014b"
}

:?:auu::
{
  run "https://wyagd001.github.io/zh-cn/docs/Tutorial.htm"
}

:?:gii::
{
  run "https://github.com/xilin98"
}


:?:baa::
{
  run "https://www.baidu.com"
}

:?:zhh::
{
  run "https://www.zhihu.com"
}

:?:lee::
{
  run "https://leetcode.cn/"
}
