#!/bin/bash
clear
APPNAME="$(cat manifest.txt | cut -d' ' -f 2)";

if [ $# -eq 0 ]
  then
    cd source
    javac -d ../class *.java
    cd ../class
    java $APPNAME
elif [ $1 == "-dc" ] 
  then
    cd source
    javac -d ../class *.java
    cd ../class
    echo -e "Enter Class Name to run >\b";read MAIN_CLASS
    echo -e "[!] Build Success \n"
    java $MAIN_CLASS
elif [ $1 == "-jar" ]
  then
    cd source
    javac -d ../class *.java
    cd ../class
    jar -cfm ../bin/$APPNAME.jar ../manifest.txt *.class
    cd ../bin
    java -jar $APPNAME.jar
else 
  echo -e "usage: ./build.sh <option>\nOPTIONS:\n{no opts:: run main class}-jar -\tcreate and run <output.jar> located in bin/\n-dc -\trun different class in class/"
fi
