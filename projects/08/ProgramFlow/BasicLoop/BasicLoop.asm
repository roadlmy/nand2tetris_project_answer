// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop local 0
@SP
M=M-1
A=M
D=M
@LCL
D=D+M
@0
D=D+A
@SP
A=M
A=M
A=D-A
M=D-A
// label LOOP
(LOOP)
// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1 
D=M   
A=A-1 
M=M+D 
// pop local 0
@SP
M=M-1
A=M
D=M
@LCL
D=D+M
@0
D=D+A
@SP
A=M
A=M
A=D-A
M=D-A
// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// pop argument 0
@SP
M=M-1
A=M
D=M
@ARG
D=D+M
@0
D=D+A
@SP
A=M
A=M
A=D-A
M=D-A
// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
// if-goto LOOP
@SP
AM=M-1
D=M
@LOOP
D;JNE
// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
