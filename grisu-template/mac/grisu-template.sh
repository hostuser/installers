#!/bin/sh

APPDIR="$HOME/Library/Application Support/Grid/Grisu Template Client/"
DIR=$(cd "$(dirname "$0")"; pwd)

if [ ! -d "$APPDIR" ]
then
  mkdir -p "$APPDIR"
fi

if [ ! -f "$APPDIR/getdown.txt" ] 
then 
	cp "$DIR/getdown.txt" "$APPDIR"
fi

if [ ! -f "$APPDIR/splash.png" ]
then
	cp "$DIR/splash.png" "$APPDIR"
fi

export X509_USER_PROXY="$HOME/.grid/grid.proxy"
java -jar "$DIR/getdown-client.jar" "$APPDIR"
