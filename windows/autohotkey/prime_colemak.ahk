#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#SingleInstance force
SetTitleMatchMode 3  ; Exact matching to avoid confusing T/B with Tab/Backspace.

#InstallKeybdHook
SendSuppressedKeyUp(key) {
    DllCall("keybd_event"
        , "char", GetKeyVK(key)
        , "char", GetKeySC(key)
        , "uint", KEYEVENTF_KEYUP := 0x2
        , "uptr", KEY_BLOCK_THIS := 0xFFC3D450)
}

#EscapeChar \

;Colemak
e::f
r::p
t::g
y::j
u::l
i::u
o::y
p::\;

s::r
d::s
f::t
g::d
j::n
k::e
l::i
\;::o

n::k

; the Prefix `$` prevents `Send` chaining

;Prime Symbols
$1::Send {+}
$2::Send {[}
$3::Send {{}
$4::Send {(}
$5::Send {&}
$6::Send {=}
$7::Send {)}
$8::Send {}}
$9::Send {]}
$0::Send {*}

$!::Send {1}
$@::Send {2}
$#::Send {3}
$$::Send {4}
$%::Send {5}
$^::Send {6}
$&::Send {7}
$*::Send {8}
$(::Send {9}
$)::Send {0}

$+::Send {$}
$=::Send {#}

$[::Send {!}
$]::Send {@}
${::Send {\%}
$}::Send {^}
