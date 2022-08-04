#Hotstring EndChars  )
 

:?:---::
sendinput, <hr>
return

:?:h1::
sendInput {#}{space}
return

:?:h2::
sendinput {#}{#}{space}
return

:?:h3::
sendinput {#}{#}{#}{space}
return

:?:h4::
sendinput {#}{#}{#}{#}{space}
return

:?:h5::
sendinput {#}{#}{#}{#}{#}{space}
return

:?:h6::
sendinput {#}{#}{#}{#}{#}{#}{space}
return

:?:;f::
sendinput, for(let{space}i{space}={space}0;i{space}<{space};{space}i{+}{+}){{}{enter}
return

:?:;fj::
sendinput, for(let{space}j{space}={space}0;j{space}<{space};{space}j{+}{+}){{}{enter}
return

:?:;i::
sendinput, if(){{}{enter}
return

:?:**::
sendinput, /* */{left}{left}
return


:?:;;jq::
sendinput,jQuery
return

:?:;;js::
sendinput,javaScript
return

:?:;;co::
sendinput,console.log(){left 1}
return

:*?:q'::
sendinput,{right}{esc}bi'{esc}ea'
return 

:?:ret::
sendinput, returj{BackSpace}n
return


:?:;c::
sendinput, const
return

::;fn::
sendinput, function
return