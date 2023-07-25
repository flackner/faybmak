#Persistent
#MaxHotkeysPerInterval 999999999
faybmakIsActive := true

#SC001::
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
NumpadLeft::Send,  {LAlt Down}{Right}{LAlt Up}
; side click right
NumpadRight::Send, {LAlt Down}{Left}{LAlt Up}
; side wheel up
NumpadDown::Send, {LCtrl Down}{LWin Down}{Left}{LWin Up}{LCtrl Up}
; side wheel down
NumpadUp::Send, {LCtrl Down}{LWin Down}{Right}{LWin Up}{LCtrl Up}
  
; gesture up
NumpadIns::Send, {LWin Down}e{LWin Up}
; gesture down
NumpadDel::Send, {LWin Down}{LShift Down}s{LShift Up}{LWin Up}
; gesture left
NumpadHome::Delete
; gesture right
NumpadEnd::Send, {LCtrl Down}{LShift Down}n{LShift Up}{LCtrl Up}
; gesture center
NumpadClear::Send, {LWin Down}v{LWin Up}

; mode click
NumpadPgDn::Send, {LCtrl Down}{Click}{LCtrl Up}

; middle click
NumpadPgUp::Send, {Click, Middle}

#If (faybmakIsActive)

*CapsLock::LControl
*SC01B::RShift
*SC136::LWin
        
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

*SC02B::Sym := true
*SC02B Up::Sym := false

SC00E::Return ; just for the moment

#If (faybmakIsActive and Cur and Sym)

SC002::Send, {LCtrl Down}{LWin Down}{Left}{LWin Up}{LCtrl Up}
SC003::Send, {LCtrl Down}{LWin Down}{Right}{LWin Up}{LCtrl Up}
SC004::Send, {LCtrl Down}z{LCtrl Up}
SC005::Send, {LCtrl Down}y{LCtrl Up}
SC006::Send, {LWin Down}d{LWin Up}
SC007::Return
SC008::Return
SC009::Return
SC00A::Return
SC00B::Return
SC00C::Return
SC00D::Return

SC010::Send, {LAlt Down}{Left}{LAlt Up}  
SC011::Send, {LAlt Down}{Right}{LAlt Up}
SC012::PgUp
SC013::^Home
SC014::^End
SC015::Return
SC016::Return
SC017::7
SC018::8
SC019::9
SC01A:::

SC01E::Return
SC01F::Send, ^{BackSpace}
SC020::PgDn
SC021::Send, ^{Delete}
SC022::Return
SC023::Return
SC024::Return
SC025::4
SC026::5
SC027::6
SC028::.

SC056::Return
SC02c::Return
SC02d::Return
SC02e::Send, {LAlt Down}{Left}{LAlt Up}
SC02f::Send, {LAlt Down}{Right}{LAlt Up}
SC030::Return
SC031::Return
SC032::0
SC033::1
SC034::2
SC035::3

SC039::Send, {LWin Down}{Tab}{LWin Up}

#If (faybmakIsActive and Cur and !Sym)

SC002::Return
SC003::Return
SC004::Return
SC005::Return
SC006::Return
SC007::Return
SC008::Return
SC009::Return
SC00A::Return
SC00B::Return
SC00C::Return
SC00D::Return

SC010::Esc
SC011::Left
SC012::Up
SC013::Right
SC014::^Home
SC015::Return
SC016::Return
SC017::Return
SC018::[
SC019::]
SC01A::+Tab

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
SC025::(
SC026::)
SC027::Tab
SC028::Delete

SC056::^End
SC02c::{
SC02d::}
SC02e::"
SC02f::'
SC030::Return
SC031::Return
SC032::Return
SC033::Return
SC034::Return
SC035::Return

SC039::^Delete

#If (faybmakIsActive and !Cur and Sym)

SC002::1
SC003::2
SC004::3
SC005::4
SC006::5
SC007::6
SC008::7
SC009::8
SC00A::9
SC00B::0
SC00C::Return
SC00D::Return

SC010::#
SC011::!
SC012::/
SC013::&
SC014::|
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
+SC020::Send {ß}
SC021::.
+SC021::Send {@}
SC022:::
SC023::Return
SC024::\
SC025::<
SC026::>
SC027::~
SC028::Return

SC056::?
SC02c::^
+SC02c::Send {°}
SC02d::SendInput, `%
+SC02d::Send {§}
SC02e::;
+SC02e::SendInput, ``
SC02f::,
+SC02f::Send {´}
SC030::$
SC031::Return
SC032::Send, {LCtrl Down}{LShift Down}{Tab}{LShift Up}{LCtrl Up}
SC033::Send, {LCtrl Down}{Tab}{LCtrl Up}
SC034::Return
SC035::Return

SC039::Send {=}

#If (faybmakIsActive and !Cur and !Sym)

SC029::Send, {LWin Down}e{LWin Up}
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

SC010::q
SC011::w
SC012::c
SC013::p
SC014::b
SC015::+Tab
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
SC023::Tab
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
SC031::Esc
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
