;=====================================================================o
;                       CapsLock Initializer                         ;|
;---------------------------------------------------------------------o
SetCapsLockState, AlwaysOff                                          ;| 
#If GetKeyState("CapsLock", "p")                                     ;|
;---------------------------------------------------------------------o

;=====================================================================o
;                    CapsLock Direction Navigator                    ;|
;-----------------------------------o---------------------------------o
;                      CapsLock + h |  Left                          ;|
;                      CapsLock + j |  Down                          ;|
;                      CapsLock + k |  Up                            ;|
;                      CapsLock + l |  Right                         ;|
;-----------------------------------o---------------------------------o
;                      Ctrl, Alt Compatible                          ;|
;-----------------------------------o---------------------------------o
h::left                                                              ;|
j::down                                                              ;|
k::up                                                                ;|
l::right                                                             ;|
;=====================================================================o
;                           CapsLock Deletor                         ;|
;-----------------------------------o---------------------------------o
;                     CapsLock + n  |  Ctrl + Delete                 ;|
;                     CapsLock + m  |  Delete                        ;|
;-----------------------------------o---------------------------------o
m::Del                                                               ;|
n::BS                                                                ;|
;---------------------------------------------------------------------o

;=====================================================================o
;                     CapsLock Home/End Navigator                    ;|
;-----------------------------------o---------------------------------o
;                      CapsLock + ; |  Home                          ;|
;                      CapsLock + . |  End                           ;|
;---------------------------------------------------------------------o
;                      Ctrl, Alt Compatible                          ;|
;---------------------------------------------------------------------o
i::Home                                                              ;|
o::End                                                               ;|
;---------------------------------------------------------------------o

;=====================================================================o
;                      CapsLock Page Navigator                       ;|
;-----------------------------------o---------------------------------o
;                      CapsLock + ' |  PageUp                        ;|
;                      CapsLock + / |  PageDown                      ;|
;---------------------------------------------------------------------o
u:: PgUp                                                             ;|
p:: PgDn                                                             ;|
;---------------------------------------------------------------------o

;=====================================================================o
;                       CapsLock Number Initializer                  ;|
;---------------------------------------------------------------------o
1:: F1                                                               ;|
2:: F2                                                               ;|
3:: F3                                                               ;|
4:: F4                                                               ;|
5:: F5                                                               ;|
6:: F6                                                               ;|
7:: F7                                                               ;|
8:: F8                                                               ;|
9:: F9                                                               ;|
0:: F10                                                              ;|
-:: F11                                                              ;|
=:: F12                                                              ;|
;---------------------------------------------------------------------o

;=====================================================================o
;                                 Tools                              ;|
;-----------------------------------o---------------------------------o
;                                                                    ;|
;---------------------------------------------------------------------o
[:: ^[                                                               ;|
;---------------------------------------------------------------------o
b:: ^b                                                               ;|
;---------------------------------------------------------------------o
/:: ^f                                                               ;|
;---------------------------------------------------------------------o
x:: AppsKey                                                          ;|
;---------------------------------------------------------------------o
esc:: `                                                              ;|
;---------------------------------------------------------------------o

;=====================================================================o
;                                Over IF                             ;|
;-----------------------------------o---------------------------------o
#if                                                                  ;|
;---------------------------------------------------------------------o

;=====================================================================o
;                             Esc Cover ~                            ;|
;-----------------------------------o---------------------------------o
+esc:: ~                                                             ;|
return                                                               ;|
;-----------------------------------o---------------------------------o

;=====================================================================o
;                       The current path Open bash                   ;|
;-----------------------------------o---------------------------------o
;                            Ctrl + Shift + P                        ;|
;---------------------------------------------------------------------o
;^+p::                                                               ;|
;---------------------------------------------------------------------o
;If WinActive("ahk_class CabinetWClass")                             ;|  
;|| WinActive("ahk_class ExploreWClass")                             ;| 
;|| WinActive("ahk_class WorkerW")                                   ;| 
;{                                                                   ;|
;WinHWND := WinActive()                                              ;|
;For win in ComObjCreate("Shell.Application").Windows                ;|
;If (win.HWND = WinHWND)                                             ;|
;{                                                                   ;|
;dir := SubStr(win.LocationURL, 9)                                   ;|
;dir := RegExReplace(dir, "%20", " ")                                ;|
;Break                                                               ;|
;}                                                                   ;| 
;Run Powershell -nolog, % dir ? dir: A_Desktop                       ;|
;}                                                                   ;|
;else{                                                               ;|
;Run Powershell -nolog, % dir ? dir: A_Desktop                       ;| 
;}                                                                   ;|
;return                                                              ;|
;---------------------------------------------------------------------o

;=====================================================================o
;                       Create Word Excel Notepad                    ;|
;-----------------------------------o---------------------------------o
;^+o::                                                               ;|
;Run notepad.exe,,UseErrorLevel                                      ;|
;return                                                              ;|
;-----------------------------------o---------------------------------o
;^+w::                                                               ;|
;Run winword.exe,,UseErrorLevel                                      ;|
;return                                                              ;|
;-----------------------------------o---------------------------------o
;^+e::                                                               ;|
;Run excel.exe,,UseErrorLevel                                        ;|
;return                                                              ;|
;---------------------------------------------------------------------o
