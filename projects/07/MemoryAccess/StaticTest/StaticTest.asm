// push constant 111
@111
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 333
@333
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 888
@888
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop static 8
@StaticTest_8
D=A
@8
D=D+A
@R15
M=D
@SP
AM=M-1
D=M
@R15
A=M
M=D
// pop static 3
@StaticTest_3
D=A
@3
D=D+A
@R15
M=D
@SP
AM=M-1
D=M
@R15
A=M
M=D
// pop static 1
@StaticTest_1
D=A
@1
D=D+A
@R15
M=D
@SP
AM=M-1
D=M
@R15
A=M
M=D
// push static 3
// **每个文件都有他单独的static栈，比如说@Foo_1,@Foo_2就是Foo文件的static栈；@Bar_1和@Bar_2就是Bar文件的static的栈
@StaticTest_3
D=A
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
// push static 1
// **每个文件都有他单独的static栈，比如说@Foo_1,@Foo_2就是Foo文件的static栈；@Bar_1和@Bar_2就是Bar文件的static的栈
@StaticTest_1
D=A
@1
A=D+A
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
// push static 8
// **每个文件都有他单独的static栈，比如说@Foo_1,@Foo_2就是Foo文件的static栈；@Bar_1和@Bar_2就是Bar文件的static的栈
@StaticTest_8
D=A
@8
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
