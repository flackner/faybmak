﻿#Persistent
#MaxHotkeysPerInterval 999999999
faybmakIsActive := true

#SC001::
{
  faybmakIsActive := false
  stopBox("faybmak - STOPPED")
}
return

#SC00E::
{
  faybmakIsActive := true
  activeBox("faybmak - ACTIVE")
}
return

; side click left
; NumpadLeft::Send, {LAlt Down}{Right}{LAlt Up}
; NumpadLeft::Send, {LCtrl Down}f{LCtrl Up}
; side click right
; NumpadRight::Send, {LAlt Down}{Left}{LAlt Up}
; side wheel up
NumpadDown::Send, {LCtrl Down}{LWin Down}{Left}{LWin Up}{LCtrl Up}
; side wheel down
NumpadUp::Send, {LCtrl Down}{LWin Down}{Right}{LWin Up}{LCtrl Up}

; gesture up
NumpadIns::Send, {LWin Down}e{LWin Up}
; gesture down
NumpadDel::Send, {LWin Down}d{LWin Up}
; gesture left
NumpadHome::Send, {LWin Down}{LShift Down}s{LShift Up}{LWin Up}
; gesture right
NumpadEnd::Send, {LCtrl Down}{LShift Down}n{LShift Up}{LCtrl Up}

; gesture center
NumpadClear::Send, {LWin Down}v{LWin Up}

; mode click
NumpadPgDn::Send, {LCtrl Down}{Click}{LCtrl Up}

; middle click
NumpadPgUp::Send, {Click, Middle}

#If (faybmakIsActive)

; side click left
*NumpadLeft::Sym := true
*NumpadLeft Up::Sym := false

; side click right
*NumpadRight::Cur := true
*NumpadRight Up::Cur := false

*CapsLock::LControl
*SC01B::RShift
*SC031::LWin

*SC138::Cur := true
*SC138 Up::Cur := false

*SC00F::
Cur := true
Sym := true
return

*SC00F Up::
Cur := false
Sym := false
return

*SC023::Send, {LCtrl Down}{LAlt Down}
*SC023 Up::Send, {LAlt Up}{LCtrl Up}

*SC136::Send, {LAlt Down}{LWin Down}
*SC136 Up::Send, {LWin Up}{LAlt Up}

*SC02B::Sym := true
*SC02B Up::Sym := false

#If (faybmakIsActive and Cur and Sym)

SC002::^PgUp
SC003::^PgDn
SC004::^c
SC005::^v
SC006::Send {Volume_Down 3}
SC007::Send {Volume_Up 3}
SC008::Send {Volume_Mute}
SC009::^!+Up
SC00A::^!+Down
SC00B::^End
SC00C::^Home
SC00D::#Tab

SC010::^NumpadSub
SC011::^NumpadAdd
SC012::^!Up
SC013::Send, {LCtrl Down}{LWin Down}{Left}{LWin Up}{LCtrl Up}
SC014::Send, {LCtrl Down}{LWin Down}{Right}{LWin Up}{LCtrl Up}
SC015::DllCall("PowrProf.dll\SetSuspendState", "int", 0, "int", 0, "int", 0)
SC016::Return
SC017::7
SC018::8
SC019::9
SC01A::BackSpace

SC01E::!^Home
SC01F::!Home
SC020::!^Down
SC021::!End
SC022::!^End
SC023::Return
SC024::.
SC025::4
SC026::5
SC027::6
SC028::0

SC056::Return
SC02c::Return
SC02d::^w
SC02e::!^PgDn
SC02f::!^PgUp
SC030::Return
SC031::Return
SC032::1
SC033::2
SC034::3
SC035:::

SC039::enter

#If (faybmakIsActive and Cur and !Sym)

; use ^#1 to cycle through active tabs
;if WinExist("Windows PowerShell") WinActivate SendInput, Get-Desktop 1 | Switch-Desktop{enter} ; maybe some server hack
SC002::Run, powershell -ExecutionPolicy ByPass -NoProfile -nologo -Command "Get-Desktop 0 | Switch-Desktop",, Hide
SC003::Run, powershell -ExecutionPolicy ByPass -NoProfile -nologo -Command "Get-Desktop 1 | Switch-Desktop",, Hide
SC004::Run, powershell -ExecutionPolicy ByPass -NoProfile -nologo -Command "Get-Desktop 2 | Switch-Desktop",, Hide
SC005::Run, powershell -ExecutionPolicy ByPass -NoProfile -nologo -Command "Get-Desktop 3 | Switch-Desktop",, Hide
SC006::Run, powershell -ExecutionPolicy ByPass -NoProfile -nologo -Command "Get-Desktop 4 | Switch-Desktop",, Hide
SC007::Run, powershell -ExecutionPolicy ByPass -NoProfile -nologo -Command "Get-Desktop 5 | Switch-Desktop",, Hide
SC008::Run, powershell -ExecutionPolicy ByPass -NoProfile -nologo -Command "Get-Desktop 6 | Switch-Desktop",, Hide
SC009::Run, powershell -ExecutionPolicy ByPass -NoProfile -nologo -Command "Get-Desktop 7 | Switch-Desktop",, Hide
SC00A::Run, powershell -ExecutionPolicy ByPass -NoProfile -nologo -Command "Get-Desktop 8 | Switch-Desktop",, Hide
SC00B::!^NumpadSub
SC00C::!^NumpadAdd
SC00D::+F10
SC00E::!F4

SC010::^PgUp
SC011::Left
SC012::Up
SC013::Right
SC014::^PgDn
SC015::Return
SC016::Return
SC017::Return
SC018::[
SC019::]
SC01A::Esc

SC01E::Home
SC01F::Send, ^{Left}
+SC01F::Send, +^{Left}
!SC01F::Send, !^{Left}
#SC01F::Send, #^{Left}
SC020::Down
SC021::Send, ^{Right}
+SC021::Send, +^{Right}
!SC021::Send, !^{Right}
#SC021::Send, #^{Right}
SC022::End
SC023::Return
SC024::Return
SC025::Send, (
+SC025::Send, {{}
SC026::Send, )
+SC026::Send, {}}
SC027::Tab
SC028::Delete

SC056::$
SC02c::Return
SC02d::'
SC02e::!PgDn
SC02f::!PgUp
SC030::"
SC031::Return
SC032::{
SC033::}
SC034::Return
SC035::Return

SC039::^Delete
+SC039::Send, {Delete}

#If (faybmakIsActive and !Cur and Sym)

SC002::^1
SC003::^2
SC004::^3
SC005::^4
SC006::^5
SC007::^6
SC008::^7
SC009::^8
SC00A::^9
SC00B::Return
SC00C::Return
SC00D::Return

SC010::~
SC011::!
SC012::/
SC013::|
SC014::&
SC015::Return
SC016::Return
SC017::Return
SC018::Return
SC019::Return
SC01A::Return

SC01E::-
SC01F::+
+SC01F::Send {€}
SC020::*
+SC020::Send {°}
SC021::.
+SC021::Send {§}
SC022::,
SC023::Return
SC024::Return
SC025::<
SC026::>
SC027::^
SC028::Return

SC056::\
SC02c::ß
SC02d::#
SC02e::=
+SC02e::SendInput, ``
SC02f::;
+SC02f::Send {´}
SC030::?
SC031::Return
SC032::SendInput, `%
SC033::@
SC034::Return
SC035::Return

SC039::Send {:}

#If (faybmakIsActive and !Cur and !Sym)

SC029::Esc
SC002::Send, {LAlt Down}{Left}{LAlt Up}
SC003::Send, {LAlt Down}{Right}{LAlt Up}
SC004::^z
SC005::^y
SC006::F5
SC007::F6
SC008::F7
SC009::F8
SC00A::F9
SC00B::PgDn
SC00C::PgUp
SC00D::#t

SC010::q
SC011::w
SC012::c
SC013::p
SC014::b
SC015::Tab
SC016::j
SC017::l
SC018::u
SC019::y
SC01A::BackSpace

SC01E::a
SC01F::r
SC020::s
SC021::t
SC022::g
SC024::m
SC025::n
SC026::e
SC027::i
SC028::o

SC056::z
SC02c::ö
SC02d::f
SC02e::d
SC02f::v
SC030::x
SC032::k
SC033::h
SC034::ü
SC035::ä

+SC039::Send {_}

#if

;source: https://autohotkey.com/board/topic/18042-simple-message-on-top-for-a-delayed-time/

stopBox(text){
	Gui, +AlwaysOnTop +ToolWindow -SysMenu -Caption
	Gui, Color, d71d37 ;changes background color
	Gui, Font, 000000 s20 wbold, Verdana ;changes font color, size and font
	Gui, Add, Text, x0 y0, %text% ;the text to display
        Gui, Show, NoActivate X0 Y0, "test"


	sleep, 1000
	Gui, Destroy
}

activeBox(text){
	Gui, +AlwaysOnTop +ToolWindow -SysMenu -Caption
	Gui, Color, 2dd635 ;changes background color
	Gui, Font, 000000 s20 wbold, Verdana ;changes font color, size and font
	Gui, Add, Text, x0 y0, %text% ;the text to display
        Gui, Show, NoActivate X0 Y0, "test"


	sleep, 1000
	Gui, Destroy
}
