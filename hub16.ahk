; AutoHotkey for Hub16 https://github.com/joshajohnson/Hub16/
; A macro pad with 16 keys, two rotary encoders, a four port USB hub, and plenty of LEDs! 
; 
; Created by Steven Smethurst (@funvill)
; Last updated: 2020-March-23
; More info: https://github.com/funvill/AutoHotkey
; 

#NoEnv
SendMode Input
#InstallKeybdHook
#UseHook On
#SingleInstance force ;only one instance of this script may run at a time!
#MaxHotkeysPerInterval 2000

; Note: 
;  - If blocks are until the next blank line
; 

; ------------------
; |  ENC1   ENC2   |
; | a   b   c   d  |
; | e   f   g   h  |
; | i   j   k   l  |
; | m   n   o      |
; ------------------

; Steven version 
; =====================================

; Application specific 
; --------------------- 
; VSCode 
#if (getKeyState("F24", "P")) and if WinActive("ahk_exe Code.exe")
F24 & a::^b   ; Toggle side bar 

; Notes: 
;  - This IF says that only do the following commands if [F24] is pressed. 
;    The hud16 uses a modifier of [F24] with all the keys. So this if statment says 
;    to only do the following actions when [f24] is set.  
#if (getKeyState("F24", "P"))
; 
; Encoder 1
; -----------------
; Clockwise
F24 & q::Volume_Down
; Anti Clockwise
F24 & r::Volume_Up
; Button
F24 & s:: Volume_Mute
;
; Encoder 2
; -----------------
; Clockwise
F24 & t::Media_Prev
; Anti Clockwise
F24 & u::Media_Next
; Button
F24 & v::Media_Play_Pause
;
; Keys 
; -----------------
; In this case I will be using them as a numberpad primarly. 
; -------------------
; |  ENC1   ENC2    |
; | a=7 b=8 c=9 d=- |
; | e=4 f=5 g=6 h=+ |
; | i=1 j=2 k=3 l=  |
; | m=0 n=  o=.     |
; -------------------
F24 & a::7
F24 & b::8
F24 & c::9
F24 & e::4
F24 & f::5
F24 & g::6
F24 & i::1
F24 & j::2
F24 & k::3
F24 & m::0
F24 & o::.
F24 & d::-
F24 & h::+