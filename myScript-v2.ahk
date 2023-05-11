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
        SendInput("^+t")
    }
#If

#If WinActive("ahk_exe chrome.exe") || WinActive("ahk_exe obsidian.exe")
    !t:: {
        SendInput("^+i")
    }
#If

!t:: {
    SendInput("#3")
}

;; 打开, 关闭侧边栏 (vscode obsidian) 左边 alt + 9 右边 alt + 0
#If WinActive("ahk_exe obsidian.exe")
    !9:: {
        SendInput("^+!0")
    }

    !0:: {
        SendInput("^+!9")
    }
#If

#If WinActive("ahk_exe code.exe")
    !0:: {
        SendInput("^0")
    }
#If

;; 页面路由 alt + , 返回 alt + . 前进
!,:: {
    SendInput("!{Left}")
}

!.:: {
    SendInput("!{Right}")
}

;; 关闭页面 alt + b
!b:: {
    SendInput("^w")
}

;; vscode  alt + a hover 提示
#If WinActive("ahk_exe code.exe")
    !a:: {
        SendInput("^k")
        Sleep(100)
        SendInput("^i")
    }
#If

;; vscode 代码提示 alt +d
!d:: {
    SendInput("^i")
}

;; vscode 代码跳转 (in to the definetion) alt + i (f12)
!i:: {
    SendInput("{F12}")
}

;; 搜索 alt + f 当前文件搜索 alt + g 全局搜搜索
!f:: {
    SendInput("^f")
}

#If WinActive("ahk_exe chrome.exe")
    !g:: {
        SendInput("^k")
    }
#If

!g:: {
    SendInput("^+f")
}

;; 复制 黏贴 alt + y  alt + p
!y:: {
    SendInput("^c")
}

;; 全屏 alt + u
!u:: {
    SendInput("{F11}")
}

;; 重命名 alt + r
!r:: {
    SendInput("{F2}")
}

;; 移动 alt + h j k l
!h:: {
    SendInput("{Left}")
}

!j:: {
    SendInput("{Down}")
}

!k:: {
    SendInput("{Up}")
}

!l:: {
    SendInput("{Right}")
}

; 继承部分ctrl 功能 alt + / 注释 alt + s 保存 alt + m 字典
!/:: {
    SendInput("^/")
}

!s:: {
  SendInput("^s")
}

!m:: {
SendInput("^d")
}

;; obsidian 搜索 alt + x
#If WinActive("ahk_exe obsidian.exe")
!x:: {
SendInput("^p")
}
#If

;; 屏幕截图 alt + c
!c:: {
Run("snippingtool.exe")
}

;; ---ctrl

;; vscode ctrl + a 全选 ctrl + b 跳转文件
^a:: {
SendInput("^a")
}

#If WinActive("ahk_exe code.exe")
^b:: {
SendInput("^p")
}
#If

;; ctrl + g 跳转行
^g:: {
SendInput("^g")
}

;; ctrl + h 替换 ctrl + j 交换行 ctrl + k 清除行 ctrl + l 选择行
^h:: {
SendInput("^h")
}

^j:: {
SendInput("!{Up}")
}

^k:: {
SendInput("^k")
Sleep(100)
SendInput("^x")
}

^l:: {
SendInput("^l")
}

;; ctrl + m 最大化 ctrl + n 新建 ctrl + o 打开
^m:: {
SendInput("#^{Space}")
}

^n:: {
SendInput("^n")
}

^o:: {
SendInput("^o")
}

;; ctrl + p 查找
^p:: {
SendInput("^p")
}

;; ctrl + q 关闭当前窗口
^q:: {
SendInput("!{F4}")
}

;; ctrl + s 保存 ctrl + t 新建标签页 ctrl + u 源码 ctrl + v 粘贴
^s:: {
SendInput("^s")
}

^t:: {
SendInput("^t")
}

^u:: {
SendInput("^u")
}

^v:: {
SendInput("^v")
}

;; ctrl + w 关闭当前标签页 ctrl + x 剪切 ctrl + y 恢复 ctrl + z 撤销
^w:: {
SendInput("^w")
}

^x:: {
SendInput("^x")
}

^y:: {
SendInput("^y")
}

^z:: {
SendInput("^z")
}
