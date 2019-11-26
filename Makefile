HelloWorld.exe:HelloWorld.o Main.o -o HelloWorld.exe
    g++ -g -o HelloWorld.exe HelloWorld.o Main.o
HelloWorld.o:HelloWorld.hxx -o HelloWord.o
    g++ -g -o HelloWorld.o -c HelloWorld.hxx
Main.o:Main.cxx -o Main.o
    g++ -g -o Main.o -c Main.cxx

