
#Hotstring EndChars  `t
:?:hh::
sendinput, ^#{left}
return

:?:ll::
sendinput, ^#{right}
return


:?:k1::
sendinput ^{1}
return

:?:k2::
sendinput ^{2}
return

:?:k3::
sendinput ^{3}
return

:?:k4::
sendinput ^{4}
return

:?:k5::
sendinput ^{5}
return

:?:jj::
sendinput !{left}
return


:?:kk::
sendinput !{right}
return

:?:j1::
sendinput #1
return

:?:j2::
sendinput #2
return

:?:j3::
sendinput #3
return

:?:j4::
sendinput #4
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

:?:fn::
sendinput function
return

:?:;h::
run, https://www.notion.so/cd31967273e44bb588d59ac94f38014b
return

:?:;auto::
run, https://wyagd001.github.io/zh-cn/docs/Tutorial.htm
return

:?:;gi::
run, https://github.com/infinitezxl
return

