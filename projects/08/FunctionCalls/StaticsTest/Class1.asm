// SP = 256
// call Sys.init
@256
D=A
@SP
M=D
@Sys$ret.1
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@5
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@Sys.init
0;JMP
(Sys$ret.1)
// function Class1.set 0
(Class1.set)
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
// pop static 0
@Class1_0
D=A
@R15
M=D
@SP
AM=M-1
D=M
@R15
A=M
M=D
// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop static 1
@Class1_1
D=A
@R15
M=D
@SP
AM=M-1
D=M
@R15
A=M
M=D
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// return
@LCL
D=M
@5
D=D-A
A=D
D=M
@R13
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@LCL
AM=M-1
D=M
@THAT
M=D
@LCL
AM=M-1
D=M
@THIS
M=D
@LCL
AM=M-1
D=M
@ARG
M=D
@LCL
AM=M-1
D=M
@LCL
M=D
@R13
A=M
0;JMP
// function Class1.get 0
(Class1.get)
// push static 0
// **每个文件都有他单独的static栈，比如说@Foo_1,@Foo_2就是Foo文件的static栈；@Bar_1和@Bar_2就是Bar文件的static的栈
@Class1_0
D=M
@SP
A=M
M=D
@SP
M=M+1
// push static 1
// **每个文件都有他单独的static栈，比如说@Foo_1,@Foo_2就是Foo文件的static栈；@Bar_1和@Bar_2就是Bar文件的static的栈
@Class1_1
D=M
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
// return
@LCL
D=M
@5
D=D-A
A=D
D=M
@R13
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@LCL
AM=M-1
D=M
@THAT
M=D
@LCL
AM=M-1
D=M
@THIS
M=D
@LCL
AM=M-1
D=M
@ARG
M=D
@LCL
AM=M-1
D=M
@LCL
M=D
@R13
A=M
0;JMP