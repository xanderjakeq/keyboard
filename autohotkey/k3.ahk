#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#InstallKeybdHook
SendSuppressedKeyUp(key) {
    DllCall("keybd_event"
        , "char", GetKeyVK(key)
        , "char", GetKeySC(key)
        , "uint", KEYEVENTF_KEYUP := 0x2
        , "uptr", KEY_BLOCK_THIS := 0xFFC3D450)
}

#EscapeChar \

>!q::
Send `
return

>!w::
Send ~
return

Volume_Up::F12

Volume_Down::F11




*CapsLock::
    Send {Blind}{Esc DownR}
    SendSuppressedKeyUp("Esc")
    return
*CapsLock up::
    Send {Blind}{Esc Up}
    return

;!Esc::CapsLock

Esc::CapsLock
