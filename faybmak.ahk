#Persistent
#MaxHotkeysPerInterval 999999999

LControl & RAlt::Cur := true
LControl & RAlt Up::Cur := false
SC02B::Sym := true
SC02B Up::Sym := false

#If (AltGr) 

	SC011::Delete
	SC012::Up
	SC013::PgUp
	SC01E::Home
	SC01F::Left
	SC020::Down
	SC021::Right
	SC022::End
	SC02e::PgDn

SC001::Esc
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

SC00E::BackSpace
SC00F::Tab

#If (Cur and Sym)

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

SC00E::Return

#If (Cur)

SC010::#
+SC010::\
SC011::Delete
SC012::Up
SC013::PgUp
SC014::'
+SC014::`
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
+SC056::@
SC02c::Insert
SC02d::Esc
SC02e::PgDn
SC02f::"
+SC02f::`
SC030::Return
SC031::Return
SC032::Return
SC033::Return
SC034::Return
SC035::Return

SC00E::Return

#If (Sym)

SC010::SendInput, `%
SC011::!
SC012::/
SC013::&
SC014::>
SC015::Return
SC016::Return
SC017::7
SC018::8
SC019::9

SC01E::*
SC01F::-
SC020::+
SC021::=
SC022::<
SC023::Return
SC024::2
SC025::3
SC026::4
SC027::5
SC028::6

SC056::_
SC02c::^
SC02d::~
SC02e::;
SC02f::,
SC030::|
SC031::Return
SC032::0
SC033::1
SC034::Return
SC035::Return

SC00E::

#If (!Cur and !Sym)

SC010::q
SC011::w
SC012::c
SC013::p
SC014::b
SC015::?
SC016::j
SC017::l
SC018::u
SC019::y
SC01A::LControl
SC01B::LShift

CapsLock::LControl
SC01E::a
SC01F::r
SC020::s
SC021::t
SC022::g
SC023::ö
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
SC031::.
SC032::k
SC033::h
SC034::ü
SC035::ä

+SC010::Q
+SC011::W
+SC012::C
+SC013::P
+SC014::B
+SC015::ß
+SC016::J
+SC017::L
+SC018::U
+SC019::Y

+SC01E::A
+SC01F::R
+SC020::S
+SC021::T
+SC022::G
+SC023::Ö
+SC024::M
+SC025::N
+SC026::E
+SC027::I
+SC028::O

+SC056::Z
+SC02c::X
+SC02d::F
+SC02e::D
+SC02f::V
+SC030::BackSpace
+SC031:::
+SC032::K
+SC033::H
+SC034::Ü
+SC035::Ä

SC00E::Space

; +SC029::CapsLock

; SC00F::Escape
; SC010::q
; +SC010::Q
; SC028 & SC010::Send {"}
; SC035 & SC010::Send {PgUp}
; SC011::f
; +SC011::F
; SC028 & SC011::Send {_}
; SC035 & SC011::
;     if (GetKeyState("CTRL"))  {
;         Send ^{Backspace}
;     } else {
;         Send {Backspace}
;     }
; return
; SC012::u
; +SC012::U
; SC028 & SC012::Send {[}
; SC035 & SC012::
;     if (GetKeyState("CTRL") && !GetKeyState("SHIFT"))  {
;         Send ^{Up}
;     } else if (!GetKeyState("CTRL") && GetKeyState("SHIFT"))  {
;         Send +{Up}
;     } else if (GetKeyState("CTRL") && GetKeyState("SHIFT"))  {
;         Send ^+{Up}
;     } else {
;         Send {Up}
;     }
; return
; SC013::y
; +SC013::Y
; SC028 & SC013::Send {]}
; SC035 & SC013::
;     if (GetKeyState("CTRL"))  {
;         Send ^{Delete}
;     } else {
;         Send {Delete}
;     }
; return
; SC014::z
; +SC014::Z
; SC028 & SC014::Send {^}
; SC035 & SC014::Send {PgDn}
; SC015::x
; +SC015::X
; SC028 & SC015::Send {!}
; SC016::k
; +SC016::K
; SC028 & SC016::Send {<}
; SC035 & SC016::Send {1}
; SC017::c
; +SC017::C
; SC028 & SC017::Send {>}
; SC035 & SC017::Send {2}
; SC018::w
; +SC018::W
; SC028 & SC018::Send {=}
; SC035 & SC018::Send {3}
; SC019::b
; +SC019::B
; SC028 & SC019::Send {&}

; SC03A::Tab
; SC01E::o
; +SC01E::O
; SC035 & SC01E::
;     if (GetKeyState("SHIFT"))  {
;         Send +{Home}
;     } else {
;         Send {Home}
;     }
; return
; SC028 & SC01E::Send {/}
; SC01F::h
; +SC01F::H
; SC028 & SC01F::Send {-}
; SC035 & SC01F::
;     if (GetKeyState("CTRL") && !GetKeyState("SHIFT"))  {
;         Send ^{Left}
;     } else if (!GetKeyState("CTRL") && GetKeyState("SHIFT"))  {
;         Send +{Left}
;     } else if (GetKeyState("CTRL") && GetKeyState("SHIFT"))  {
;         Send ^+{Left}
;     } else {
;         Send {Left}
;     }
; return
; SC020::e
; +SC020::E
; SC028 & SC020::Send {{}
; SC035 & SC020::
;     if (GetKeyState("CTRL") && !GetKeyState("SHIFT"))  {
;         Send ^{Down}
;     } else if (!GetKeyState("CTRL") && GetKeyState("SHIFT"))  {
;         Send +{Down}
;     } else if (GetKeyState("CTRL") && GetKeyState("SHIFT"))  {
;         Send ^+{Down}
;     } else {
;         Send {Down}
;     }
; return
; SC021::a
; +SC021::A
; SC028 & SC021::Send {}}
; SC035 & SC021::
;     if (GetKeyState("CTRL") && !GetKeyState("SHIFT"))  {
;         Send ^{Right}
;     } else if (!GetKeyState("CTRL") && GetKeyState("SHIFT"))  {
;         Send +{Right}
;     } else if (GetKeyState("CTRL") && GetKeyState("SHIFT"))  {
;         Send ^+{Right}
;     } else {
;         Send {Right}
;     }
; return
; SC022::i
; +SC022::I
; SC028 & SC022::Send {*}
; SC035 & SC022::
;     if (GetKeyState("SHIFT"))  {
;         Send +{End}
;     } else {
;         Send {End}
;     }
; return
; SC023::d
; +SC023::D
; SC028 & SC023::Send {?}
; SC035 & SC023::Send {.}
; SC024::r
; +SC024::R
; SC028 & SC024::Send {(}
; SC035 & SC024::Send {4}
; SC025::t
; +SC025::T
; SC028 & SC025::Send {)}
; SC035 & SC025::Send {5}
; SC026::n
; +SC026::N
; SC028 & SC026::Send {'}
; SC035 & SC026::Send {6}
; SC027::s
; +SC027::S
; SC028 & SC027::Send {:}

; SC02C::Send {,}
; SC028 & SC02C::Send {#}
; SC02D::m
; +SC02D::M
; SC028 & SC02D::Send {$}
; SC02E::Send {.}
; +SC02E::Send {.}
; SC028 & SC02E::Send {|}
; SC02F::j
; +SC02F::J
; SC028 & SC02F::Send {~}
; SC030::Send {;}
; SC028 & SC030::Send {``}
; SC031::g
; +SC031::G
; SC028 & SC031::Send {+}
; SC035 & SC031::Send {0}
; SC032::l
; +SC032::L
; SC028 & SC032::Send {`%}
; SC035 & SC032::Send {7}
; SC033::p
; +SC033::P
; SC028 & SC033::Send {\}
; SC035 & SC033::Send {8}
; SC034::v
; +SC034::V
; SC028 & SC034::Send {@}
; SC035 & SC034::Send {9}

; RAlt & LAlt::Suspend
; LAlt & RAlt::Suspend
