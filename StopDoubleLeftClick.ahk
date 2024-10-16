#Requires AutoHotkey v2.

*LButton::
{
	if (A_PriorHotkey = A_ThisHotkey && A_TimeSincePriorHotkey < 80)
		return
	Send "{Blind}{LButton Down}"
	KeyWait "LButton"
	Send "{Blind}{LButton Up}"
}