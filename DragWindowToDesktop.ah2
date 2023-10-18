;#SETUP START
#SingleInstance force
ListLines 0
SendMode "Input"
SetWorkingDir A_ScriptDir
KeyHistory 0
#WinActivateForce

ProcessSetPriority "H"

SetWinDelay -1
SetControlDelay -1


;include the library
#Include %A_LineFile%\..\VD.ah2
; or
; #Include %A_LineFile%\..\_VD.ahk
; ...{startup code}
; VD.init()

; VD.ahk : calls `VD.init()` on #Include
; _VD.ahk : `VD.init()` when you want, like after a GUI has rendered, for startup performance reasons

;you should WinHide invisible programs that have a window.
try WinHide "Malwarebytes Tray Application"
;#SETUP END

VD.createUntil(3) ;create until we have at least 3 VD

return

^#+Left::VD.goToDesktopNum(VD.MoveWindowToRelativeDesktopNum("A", -1))

^#+Right::VD.goToDesktopNum(VD.MoveWindowToRelativeDesktopNum("A", +1))