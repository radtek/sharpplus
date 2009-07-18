@echo off
set CP=D:\antlr\277\lib\antlr.jar;%CLASSPATH%
set cmd=java -classpath "%CP%" antlr.Tool %*
echo %cmd%
%cmd%
set CP=
