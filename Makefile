output.exe: Main.o HelloWorld.o output.exe
    g++ -g -o output.exe Main.o HelloWorld.o
Main.o:Main.cxx Main.o
    g++ -g -o Main.o -c Main.cxx
HelloWorld.o:HelloWorld.cxx HelloWorld.o
    g++ -g -o HelloWorld.o -c HelloWorld.cxx

