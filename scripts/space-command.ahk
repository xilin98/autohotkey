#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

~space  & d::
sendinput, #d
return 