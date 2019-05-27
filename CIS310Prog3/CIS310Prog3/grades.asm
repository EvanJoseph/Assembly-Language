; grades.asm - This program will assign a grade, depending on how many points were obtained.
; Evan Joseph, Program 3, 3/6/2017

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
ascore BYTE 90
bscore BYTE 80
cscore BYTE 70
dscore BYTE 60
myscore BYTE 91			;can change this to any score to test
mygrade BYTE ?

.code
main proc
and eax,0				;clears eax to 0, makes it more readable
mov al,myscore
.IF al>=ascore
	mov mygrade,10
	mov al,mygrade
.ELSEIF al >=bscore && al <ascore
	mov mygrade,11
	mov al,mygrade
.ELSEIF al >=cscore && al <bscore
	mov mygrade,12
	mov al,mygrade
.ELSEIF al >=dscore && al <cscore
	mov mygrade,13
	mov al,mygrade
.ELSE
	mov mygrade,14
	mov al,mygrade
.ENDIF
	invoke ExitProcess,0
main endp
end main