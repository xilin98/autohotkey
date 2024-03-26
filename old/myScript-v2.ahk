;;---全局
#Hotstring "EndChars" ") )"
#SingleInstance "Force"
#MaxHotkeysPerInterval 200
#InstallKeybdHook
#UseHook

SetWorkingDir(A_ScriptDir)

;; Always run your script as admin
if !A_IsAdmin {
    Run "*RunAs", A_ScriptFullPath
    ExitApp
}

;; 清除键盘状态
~*Esc:: {
    Send("{Blind}{vkFFsc000}")
}

;; restart 重启脚本
:*:?`;re:: {
    Run("*RunAs", A_ScriptFullPath)
    ExitApp
}

;; ---alt
;; 打开终端 alt + t
#If WinActive("ahk_exe code.exe")
    !t:: {
        send("^+t")
    }
#If

#If WinActive("ahk_exe chrome.exe") || WinActive("ahk_exe obsidian.exe")
    !t:: {
        send("^+i")
    }
#If

!t:: {
    send("#3")
}

;; 打开, 关闭侧边栏 (vscode obsidian) 左边 alt + 9 右边 alt + 0
#If WinActive("ahk_exe obsidian.exe")
    !9:: {
        send("^+!0")
    }

    !0:: {
        send("^+!9")
    }
#If

#If WinActive("ahk_exe code.exe")
    !0:: {
        send("^0")
    }
#If

;; 页面路由 alt + , 返回 alt + . 前进
!,:: {
    send("!{Left}")
}

!.:: {
    send("!{Right}")
}

;; 关闭页面 alt + b
!b:: {
    send("^w")
}

;; vscode  alt + a hover 提示
#If WinActive("ahk_exe code.exe")
    !a:: {
        send("^k")
        Sleep(100)
        send("^i")
    }
#If

;; vscode 代码提示 alt +d
!d:: {
    send("^i")
}

;; vscode 代码跳转 (in to the definetion) alt + i (f12)
!i:: {
    send("{F12}")
}

;; 搜索 alt + f 当前文件搜索 alt + g 全局搜搜索
!f:: {
    send("^f")
}

#If WinActive("ahk_exe chrome.exe")
    !g:: {
        send("^k")
    }
#If

!g:: {
    send("^+f")
}

;; 复制 黏贴 alt + y  alt + p
!y:: {
    send("^c")
}

;; 全屏 alt + u
!u:: {
    send("{F11}")
}

;; 重命名 alt + r
!r:: {
    send("{F2}")
}

;; 移动 alt + h j k l
!h:: {
    send("{Left}")
}

!j:: {
    send("{Down}")
}

!k:: {
    send("{Up}")
}

!l:: {
    send("{Right}")
}

; 继承部分ctrl 功能 alt + / 注释 alt + s 保存 alt + m 字典
!/:: {
    send("^/")
}

!s:: {
  send("^s")
}

!m:: {
send("^d")
}

;; obsidian 搜索 alt + x
#If WinActive("ahk_exe obsidian.exe")
!x:: {
send("^p")
}
#If

;; 屏幕截图 alt + c
!c:: {
Run("snippingtool.exe")
}

;; ---ctrl

;; vscode ctrl + a 全选 ctrl + b 跳转文件
^a:: {
send("^a")
}

#If WinActive("ahk_exe code.exe")
^b:: {
send("^p")
}
#If

;; ctrl + g 跳转行
^g:: {
send("^g")
}

;; ctrl + h 替换 ctrl + j 交换行 ctrl + k 清除行 ctrl + l 选择行
^h:: {
send("^h")
}

^j:: {
send("!{Up}")
}

^k:: {
send("^k")
Sleep(100)
send("^x")
}

^l:: {
send("^l")
}

;; ctrl + m 最大化 ctrl + n 新建 ctrl + o 打开
^m:: {
send("#^{Space}")
}

^n:: {
send("^n")
}

^o:: {
send("^o")
}

;; ctrl + p 查找
^p:: {
send("^p")
}

;; ctrl + q 关闭当前窗口
^q:: {
send("!{F4}")
}

;; ctrl + s 保存 ctrl + t 新建标签页 ctrl + u 源码 ctrl + v 粘贴
^s:: {
send("^s")
}

^t:: {
send("^t")
}

^u:: {
send("^u")
}

^v:: {
send("^v")
}

;; ctrl + w 关闭当前标签页 ctrl + x 剪切 ctrl + y 恢复 ctrl + z 撤销
^w:: {
send("^w")
}

^x:: {
send("^x")
}

^y:: {
send("^y")
}

^z:: {
send("^z")
}
