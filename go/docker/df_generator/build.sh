#!/bin/bash

BIN=df_gen
DESTDIR=bin

which go &>/dev/null
if [ $? -ne 0 -o -z "$GOROOT" ]
then
  echo "Failed to find GOROOT or the go executable - make sure it is set"
  exit 1
fi 

export GOARCH=386

for d in win linux osx;
do
  mkdir -p $DESTDIR/$d
done

echo "Building for Linux(386)"
export GOOS=linux
go build -o $DESTDIR/linux/${BIN} main.go

echo "Building for OS X/Darwin(386)"
export GOOS=darwin
go build -o $DESTDIR/osx/${BIN}

echo "Building for Windows(386)"
export GOOS=windows
go build -o $DESTDIR/win/${BIN}.exe

