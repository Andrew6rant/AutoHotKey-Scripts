#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
*CapsLock:: ; Fires the hotkey even if other modifiers are being held down. 
If (A_ThisHotkey == A_PriorHotkey && A_TimeSincePriorHotkey < 300) {
  If GetKeyState("CapsLock", "T") 
    SetCapsLockState, off
  else
    SetCapsLockState, on
}
Return
