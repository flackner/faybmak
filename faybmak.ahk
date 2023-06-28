#Persistent
#MaxHotkeysPerInterval 999999999

#Space::
{
    If (faybmakIsActive)
    {
        faybmakIsActive := false
        stopBox("faybmak - STOPPED")
    }
    Else
    {
        faybmakIsActive := true
        activeBox("faybmak - ACTIVE")
    }
}
return

; side click left
NumpadLeft::Send,  {Alt Down}{Right}{Alt Up}
; side click right
NumpadRight::Send, {Alt Down}{Left}{Alt Up}
; side wheel up
NumpadDown::Send, {Ctrl Down}{LWin Down}{Left}{LWin Up}{Ctrl Up}
; side wheel down
NumpadUp::Send, {Ctrl Down}{LWin Down}{Right}{LWin Up}{Ctrl Up}
  
; gesture up
NumpadIns::Send, {LWin Down}{Tab}{LWin Up}
; gesture down
NumpadDel::Send, {LWin Down}d{LWin Up}Dd
; gesture left
NumpadHome::Send, {Ctrl Down}x{Ctrl Up}
; gesture right
NumpadEnd::Send, {Ctrl Down}v{Ctrl Up}
; gesture center
NumpadClear::Send, {Ctrl Down}c{Ctrl Up}

; mode click
NumpadPgDn::Send, {Ctrl Down}{Click}{Ctrl Up}

; middle click
NumpadPgUp::Send, {Click, Middle}

#If (faybmakIsActive)

*CapsLock::LControl
*SC01A::LControl
*SC01B::RShift

*SC01D::Sym := true
*SC01D Up::Sym := false
        
*SC138::Cur := true
*SC138 Up::Cur := false

*SC02B::Sym := true
*SC02B Up::Sym := false

#If (faybmakIsActive and Cur and Sym)

SC010::F9
SC011::F10
SC012::F11
SC013::F12
SC014::Return
SC015::Return
SC016::Return
SC017::Return
SC018::Return
SC019::Return

SC01E::F5
SC01F::F6
SC020::F7
SC021::F8
SC022::Return
SC023::Return
SC024::Return
SC025::Return
SC026::Return
SC027::Return
SC028::Return

SC056::F1
SC02c::F2
SC02d::F3
SC02e::F4
SC02f::Return
SC030::Return
SC031::Return
SC032::Return
SC033::Return
SC034::Return
SC035::Return

#If (faybmakIsActive and Cur and !Sym)

SC010::#
SC011::Delete
SC012::Up
SC013::PgUp
SC014::'
SC015::Return
SC016::Return
SC017::Return
SC018::[
SC019::]

SC01E::Home
SC01F::Left
SC020::Down
SC021::Right
SC022::End
SC023::Return
SC024::Return
SC025::(
SC026::)
SC027::{
SC028::}

SC056::$
SC02c::Insert
SC02d::Esc
SC02e::PgDn
SC02f::"
SC030::Return
SC031::Return
SC032::Return
SC033::Return
SC034::Return
SC035::Return

#If (faybmakIsActive and !Cur and Sym)

SC010:::
SC011::!
SC012::/
+SC012::Send {\}
SC013::&
SC014::>
SC015::Return
SC016::Return
SC017::7
SC018::8
SC019::9

SC01E::-
SC01F::+
+SC01F::Send {€}
SC020::*
+SC020::Send {ß}
SC021::=
+SC021::Send {@}
SC022::<
SC023::Return
SC024::~
SC025::4
SC026::5
SC027::6
SC028::ö

SC056::_
SC02c::^
+SC02c::Send {°}
SC02d::SendInput, `%
+SC02d::Send {§}
SC02e::;
+SC02e::SendInput, ``
SC02f::,
+SC02f::Send {´}
SC030::|
SC031::.
SC032::0
SC033::1
SC034::2
SC035::3

#If (faybmakIsActive and !Cur and !Sym)

SC002::F1
SC003::F2
SC004::F3
SC005::F4
SC006::F5
SC007::F6
SC008::F7
SC009::F8
SC00A::F9
SC00B::F10
SC00C::F11
SC00D::F12

+SC002::Send {1}
+SC003::Send {2}
+SC004::Send {3}
+SC005::Send {4}
+SC006::Send {5}
+SC007::Send {6}
+SC008::Send {7}
+SC009::Send {8}
+SC00A::Send {9}
+SC00B::Send {0}

SC010::q
SC011::w
SC012::c
SC013::p
SC014::b
SC015::z
SC016::j
SC017::l
SC018::u
SC019::y

SC01E::a
SC01F::r
SC020::s
SC021::t
SC022::g
SC023::y
SC024::m
SC025::n
SC026::e
SC027::i
SC028::o

SC056::z
SC02c::x
SC02d::f
SC02e::d
SC02f::v
SC030::BackSpace
SC031::Send {.}
+SC031::Send {?}
SC032::k
SC033::h
SC034::ü
SC035::ä

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
