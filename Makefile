#定义变量，使用变量:$(变量名)
CC=g++
#定义变量srcs，表示需要编译的源文件，需要表明路径，如果直接写表示这些cpp文件和makefile在同一个目录下，如果有多个源文件，每行以\结尾
SRCS=Main.cxx\
        HelloWorld.cxx
#定义变量OBJS,表示将原文件中所有以.cpp结尾的文件替换成以.o结尾，即将.cpp源文件编译成.o文件
OBJS=$(SRCS:.cpp=.o)
#定义变量，表示最终生成的可执行文件名
EXEC=output.exe
#start，表示开始执行，冒号后面的$(OBJS)表示要生成最终可执行文件，需要依赖那些.o文件的
start:$(OBJS)
        #相当于执行：g++ -o maincpp .o文件列表，-o表示生成的目标文件
        $(CC) -g -o $(EXEC) $(OBJS)
#表示我的.o文件来自于.cpp文件
.cpp.o:
        $(CC) -o $@ -c $< -DMYLINUX

#执行make clean指令
clean:
        #执行make clean指令时，需要执行的操作，比如下面的指令时指删除所有.o文件
        rm -rf $(OBJS)

