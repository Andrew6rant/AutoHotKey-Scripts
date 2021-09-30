#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
number := 256

+WheelUp::
if (number < 256) {
	number := number + 16
	ToolTip n: %number%
	WinSet, Transparent, %number%, A
	}
Return

+WheelDown::
if (number > 0) {
	number := number - 16
	ToolTip n: %number%
	WinSet, Transparent, %number%, A
	}
Return
