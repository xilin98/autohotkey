
#Hotstring EndChars  `t

:?:;[::
sendinput, ^#{left}
return


:?:;]::
sendinput, ^#{right}
return


:?:goo::
run, https://www.google.com
return

::bili::
run,https://www.bilibili.com/account/history?spm_id_from=333.788.0.0
return

:?:..::
sendinput, ^c 
sleep, 200
run, cmd ,%clipboard%
sleep, 200
sendinput code . {enter}
sleep, 500
WinKill, cmd
return 

:?:woo::
run cmd ,C:\Users\12624\Desktop\zworking
sleep,200
WinGet, active_id, PID, A 
sendinput code . {enter}
sleep, 300
run, taskkill /PID %active_id% /F,,Hide
return

:?:;npm::
run,https://www.npmjs.com/
return 

:?:;f::
sendinput fuction
return

:?:;nt::
run, https://www.notion.so/cd31967273e44bb588d59ac94f38014b
return
;
:?:;auto::
run, https://wyagd001.github.io/zh-cn/docs/Tutorial.htm
return

:?:;git::
run, https://github.com/infinitezxl
return

:?:v3::
run, https://v3.cn.vuejs.org
return

:?:cxs::
run, https://learn.cuixueshe.com/
return

:?:bd::
run, www.baidu.com
return

:?:zhi::
run, www.zhihu.com
return

::;lt::
run, https://leetcode.cn/
return