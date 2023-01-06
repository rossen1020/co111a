// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.
//參照老師在教學時給看的程式碼

(FOREVER)
@16384
D=A
@i
M=D

@24576
D=A

@i
D=M-D
@WEND
D;JGE

@COLOR
M=0
@24576
D=M 
@NEXT
D;JEQ

@COLOR
M=-1

(NEXT)
@COLOR
D=M
@i
A=M
M=D

@i
M=M+1
@WHILE
0;JMP

(WEND)
@FOREVER
0;JMP