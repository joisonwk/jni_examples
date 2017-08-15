#!/bin/sh
. /etc/environment
echo $JAVA_HOME
javac Main.java

LIBPATH=/usr/lib/jvm/java-7-openjdk-amd64/jre/lib/amd64/server
export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:${LIBPATH}
g++ -Wall main.cc -I$JAVA_HOME/include -L${LIBPATH} -ljvm
./a.out
