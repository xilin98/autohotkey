;; 打开终端 alt + t
#If WinActive("ahk_exe code.exe")
<!t::
send, ^+t
#if

#If WinActive("ahk_exe chrome.exe") or WinActive("ahk_exe obsidian.exe")
  <!t::
  send, ^+i
return
#if

<!t::
  send, #3
return

;; 打开, 关闭侧边栏 (vscode obsidian) 左边 alt + 9 右边 alt + 0
#if WinActive("ahk_exe obsidian.exe")
<!9::
send, ^+<!0
return

<!0::
  send, ^+<!9
return
#if

#if WinActive("ahk_exe code.exe")

<!0::
  send, ^0
return

#if

;; 页面路由 alt + , 返回 alt + . 前进
<!,::
  send, <!{left}
return

<!.::
  send, <!{right}
return

;; 关闭页面 alt + b
<!b::
  send, ^w
return

;; vscode  alt + a hover 提示
#IfWinActive, ahk_exe code.exe
<!a::
  send,^k
  sleep,100
  send,^i
return

;; vscode 代码提示 alt +d
<!d::
  send, ^i
return

;; vscode 代码跳转 (in to the definetion) alt + i (f12)
<!i::
  send, {f12}
return

;; 搜索 alt + f 当前文件搜索 alt + g 全局搜搜索
<!f::
  send, ^f
return

#If WinActive("ahk_exe chrome.exe")
<!g::
send, ^k
return
#if

<!g::
  send, ^+f
return

;; 复制 黏贴 alt + y  alt + p
<!y::
  send, ^c
Return

;; 全屏 alt + u
<!u::
  send, {f11}
return

;; 重命名 alt + r
<!r::
  send, {f2}
return,

;; 移动 alt + h j k l
<!h::
  send, {left}
return

<!j::
  send, {down}
return

<!k::
  send, {up}
return

<!l::
  send, {right}
return

; 继承部分ctrl 功能 alt + / 注释 alt + s 保存 alt + m 字典
<!/::
  send, ^/
return

<!s::
  send, ^s
return

<!m::
  send, ^m
return

;; 桌面多开 alt + [ 左边桌面, alt + ] 右边桌面, alt+\ 新建桌面, alt + BackSpace 关闭桌面
<![::
  send, #^{left}
return

;右边桌面
<!]::
  send, #^{right}
return

;新建
<!\::
  send, ^#d
return

;关闭
<!BackSpace::
  send, ^#{f4}
return
