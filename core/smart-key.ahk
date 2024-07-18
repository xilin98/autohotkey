
;; 这是核心文件, 必须准确和可靠
;; 使用前先使用 CapsToRAlt 把 CapsLock 映射为 RAlt 键
#Requires AutoHotkey v2.0
;; ># 全局配置

; >## 将空格设置为触发键
#Hotstring EndChars `s

; >## 确保脚本的单一实例运行
#SingleInstance Force

InstallKeybdHook
#UseHook true

; 启动目录作为工作目录
SetWorkingDir A_InitialWorkingDir

; 为了解决键盘粘滞问题
A_MenuMaskKey := "vkFF"


; >## 重启脚本
:*:;re::
{
  Reload
}


; 以管理员身份运行脚本
if (!A_IsAdmin) {
  Run("*RunAs " A_ScriptFullPath)
  ExitApp
}

; ># 为测试准备，打印字符串
debug := "DEBUG"

:*:;;d::
{
  Msgbox(debug)
}

; ># Alt 有关热键
; >## Alt + t 打开 终端
!t:: {
  if WinActive("ahk_exe code.exe")
  {
    SendEvent("^+t")
    return
  }

  if WinActive("ahk_exe chrome.exe") or WinActive("ahk_exe obsidian.exe")
  {
    SendEvent('^+i')
    return
  }
  SendEvent('#3')
}
return

!u::
{
  SendEvent("^z")
  return
}

; >## 移动 alt + h j k l
!h::
{
  SendEvent('{left}')
  return
}

!j::
{
  SendEvent('{down}')
  return
}

!k::
{
  SendEvent('{up}')
  return
}

!l::
{
  SendEvent('{right}')
  return
}

; >## 继承部分ctrl 功能 alt + / 注释 alt + s 保存 alt + m 字典

!/::
{
  SendEvent("^/")
  return
}

!s::
{
  SendEvent("^s")
  return
}

!m::
{
  SendEvent("^m")
  return
}

![::
{
  SendEvent("#^{left}")
  return
}

!]::
{
  SendEvent("#^{right}")
  return
}

!\::
{
  SendEvent("^#d")
  return
}

!BackSpace:: {
  SendEvent("^#{f4}")
  return
}

; ># CapsLock(已映射为 RAlt) 有关热

>!space:: {
  SendEvent("{esc}")
  return
}

>!t::
{
  if WinActive("ahk_exe code.exe")
  {
    SendEvent("^+t")
    return
  }

  if WinActive("ahk_exe chrome.exe") or WinActive("ahk_exe obsidian.exe")
  {
    SendEvent('^+i')
    return
  }
  SendEvent('#3')
  return
}

; >## 移动导航
>!h:: {
  SendEvent("{left 5}")
}

>!j:: {
  SendEvent("{down 5}")
}

>!k:: {
  SendEvent("{up 5}")
}

>!l:: {
  SendEvent("{right 5}")
}


; >## 应用切换

>!1:: {
  SendEvent("#1")
}

>!2:: {
  SendEvent("#2")
}

>!3:: {
  SendEvent("#3")
}

>!4:: {
  SendEvent("#4")
}

>!5:: {
  SendEvent("#5")
}


; >## 复制 & 粘贴
>!p:: {
  SendEvent("^v")
}

>!y:: {
  SendEvent("^c")
}

>!i::{
  SendEvent("{f12}")
}

; >## 搜索
>!f::{
  SendEvent("^f")
}

>!g::{
  SendEvent("^+f")
}

>!q::
>!LButton::{
  SendEvent("!{left}")
}

>!w::
>!RButton::{
  SendEvent("!{right}")
}

; >## 切换窗口
>!WheelUp::ShiftAltTab
>!WheelDown::AltTab

; >## 切换桌面
#WheelUp::{
  Send("^#{left}")
}
#WheelDown::{
  Send("^#{right}")
}

>!,::{
  SendEvent("{f2}")
}

>!e::{
  SendEvent("^{right}")
}

>!b::{
  SendEvent("^{left}")
}

>![::{
  SendEvent("^+[")
}


>!]::{
  SendEvent("^+]")
}

; >## 是否显示桌面
>!d::{
  SendEvent("#d")
}

^+LButton::{
  SendEvent("^+[")
}

^+RButton::{
  SendEvent("^+]")
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
  run "https://www.notion.so/bb109d5134ec46f79eb70ea781abc34e?v=9a5fa6145e1c4f358969ec46bc894e09"
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

:?:;-i::-i https://pypi.tuna.tsinghua.edu.cn/simple

:?:;pip::pip install -r requirements.txt -i https://pypi.tuna.tsinghua.edu.cn/simple

; ># 缩写

:?:;h1::{
  SendEvent(">{#}{space}")
}

:?:;h2::{
  SendEvent(">{#}{#}{space}")
}

:?:;h3::{
  SendEvent(">{#}{#}{#}{space}")  
}

:?:;h4::{
  SendEvent(">{#}{#}{#}{#}{space}")  
}

:?:;h5::{
  SendEvent(">{#}{#}{#}{#}{#}{space}")
}
   
:?:;h6::{
  SendEvent(">{#}{#}{#}{#}{#}{#}{space}")  
}

;; markdown 缩写
:?:h1::{
  SendEvent("{#}{space}")  
} 

:?:h2::{
  SendEvent("{#}{#}{space}")
}

:?:h3::{
  SendEvent("{#}{#}{#}{space}")  
}

:?:h4::{
  SendEvent("{#}{#}{#}{#}{space}")  
}

:?:h5::{
  SendEvent("{#}{#}{#}{#}{#}{space}")  
}

:?:h6::{
  SendEvent("{#}{#}{#}{#}{#}{#}{space}")
}

;; 中文 引号
:?:;'::{
  SendEvent("「」")
} 

:?:;ddd::{
  currentDate := FormatTime()  ; 获取当前日期并格式化
  SendEvent(currentDate)
} 

:?:;ip::{
  SendEvent('121.43.164.214')
} 

:?:;ps::{
  SendEvent('K312371n')
} 

;; js keyword 缩写

; console.log
:?*:;co::{
  SendEvent("console.log(){left 1}")  
}

; return
:?:;ret::{
  SendEvent("return")
}

; const
:?:;c::{
  SendEvent("const")
}

; js 代码块
:?:;j::{
  SendEvent("{``")
  SendEvent("{``")
  SendEvent("{``")
  SendEvent("js")
}

;; git 命令
:?:;gco::{
  SendEvent("git checkout")  
}

:?:;gbv::{
  SendEvent("git branch -vaa")  
}

:?:;glo::{
  SendEvent("git log --pretty=one")  
}

:?:;gcm::{
  SendEvent("git commit -m")
}

:?:;gd::{
  SendEvent("git add")
}

;; pip 命令
:?:;pip::{
  SendEvent("pip install -r requirements.txt")
}

;># 打开常用文件夹
:?:;jj::{
  Run 'C:\Users\12624\.ssh'
}
