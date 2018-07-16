#!/bin/bash

cd source
javac -d ../class *.java
cd ../class
echo -e "Enter Class Name to run >\b";read MAIN_CLASS
echo -e "[!] Build Success \n"
java $MAIN_CLASS
exit
