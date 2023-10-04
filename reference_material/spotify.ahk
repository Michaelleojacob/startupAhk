
;!^s::
;Run C:\Users\migge\AppData\Local\Microsoft\WindowsApps\Spotify.exe
;return

; "CTRL + Alt + S" for Launching spotify / Activating the window / Minimizing the window
; ^!S::
; IfWinExist ahk_class SpotifyMainWindow
; {
; 	ifWinActive ahk_class SpotifyMainWindow
; 	{
; 		WinMinimize
; 	}
; 	else
; 	{
; 		WinActivate
; 	}
; }
; else
; {
; 	run C:\Users\migge\AppData\Local\Microsoft\WindowsApps\Spotify.exe
; }
; return

; ^!s::
; DetectHiddenWindows, On
; SetTitleMatchMode, 2
; SetWorkingDir, C:\Users\migge\AppData\Local\Discord ; Set working directory
; runPath := A_WorkingDir . "\Update.exe --processStart Discord.exe" ; Combine working directory and additional text to create Run parameters
; winTitle := "ahk_exe Spotify.exe ahk_class Chrome_WidgetWin_0"
; If !WinExist(winTitle) { ; If process is not running, start Discord.exe
; 	Run, % runPath
; 	WinWaitActive, % winTitle
; 	Sleep, 2000
; 	WinGet, winSize, MinMax, % winTitle
; If (winSize = -1) ; If not maximized then maximize window
; 	WinActivate, % winTitle
; 	WinMaximize, % winTitle
; 	}
; Else If !WinActive(winTitle) { ; If process is already running and not the active window, activate and open Discord window
; 	Run, % runPath
; 	Sleep, 600
; 	WinActivate, % winTitle
; 	WinGet, winSize, MinMax, % winTitle ; Check if window is maximized
; If (winSize = -1) ; If not maximized then maximize window
; 	WinActivate, % winTitle
; 	WinMaximize, % winTitle
; 	}
; Else { ; Close window if currently the active window
; 	WinClose, % winTitle
; 	Sleep, 100 ; Allow Discord to fully close before continuing
; 	Click ; Send a click to avoid the script becoming stuck if no input is recieved from the keyboard or mouse in between running the hotkey again
; 	}
; Return

; ^!s::
; if (WinActive("ahk_exe Spotify.exe"))
; 	WinMinimize
; else
; 	Run C:\Users\migge\AppData\Local\Microsoft\WindowsApps\SpotifyAB.SpotifyMusic_zpdnekdrzrea0\Spotify.exe
; return

!^s::
DetectHiddenWindows, On
SetTitleMatchMode, 2
SetWorkingDir, C:\Users\migge\AppData\Local\Microsoft\WindowsApps\SpotifyAB.SpotifyMusic_zpdnekdrzrea0 ; set working directory
runPath := A_WorkingDir . "Spotify.exe" ; Combine working directory and additional text to create Run parameters
winTitle := "ahk_class ahk_exe Spotify.exe"
If !WinExist(winTitle) { ; If process is not running, start Discord.exe
	Run, % runPath
	WinWaitActive, % winTitle
	Sleep, 2000
	WinGet, winSize, MinMax, % winTitle
If (winSize = -1) ; If not maximized then maximize window
	WinActivate, % winTitle
	WinMaximize, % winTitle
	}
Else If !WinActive(winTitle) { ; If process is already running and not the active window, activate and open Discord window
	Run, % runPath
	Sleep, 600
	WinActivate, % winTitle
	WinGet, winSize, MinMax, % winTitle ; Check if window is maximized
If (winSize = -1) ; If not maximized then maximize window
	WinActivate, % winTitle
	WinMaximize, % winTitle
	}
Else { ; Close window if currently the active window
	WinClose, % winTitle
	Sleep, 100 ; Allow Discord to fully close before continuing
	Click ; Send a click to avoid the script becoming stuck if no input is recieved from the keyboard or mouse in between running the hotkey again
	}
Return
