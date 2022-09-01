#Hotstring EndChars  )

;; 网址
:?:goo::
run, https://www.google.com
return

:?:bii::
run,https://www.bilibili.com/account/history?spm_id_from=333.788.0.0
return

:?:npp::
run,https://www.npmjs.com/
return 

:?:noo::
run, https://www.notion.so/cd31967273e44bb588d59ac94f38014b
return

:?:auu::
run, https://wyagd001.github.io/zh-cn/docs/Tutorial.htm
return

:?:gii::
run, https://github.com/infinitezxl
return

:?:v33::
run, https://v3.cn.vuejs.org
return

:?:cxx::
run, https://learn.cuixueshe.com/
return

:?:baa::
run, www.baidu.com
return

:?:zhh::
run, www.zhihu.com
return

:?:lee::
run, https://leetcode.cn/
return

:?:tyy::
run, https://www.typescriptlang.org/docs/
return


;; files文件夹
:?:woo::
run, cmd.exe , C:\Users\12624\Desktop\files
sleep, 200
WinGet, active_id, PID, A 
sendinput, code {space}.{enter}
run, taskkill /PID %active_id% /F,,Hide
return



;; 窗口
:?:xxx::
sendinput, !{f4}
return

