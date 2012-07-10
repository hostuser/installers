#!/bin/sh

APPDIR="/Library/Application Support/Grid/Gricli/"
DIR=$(cd "$(dirname "$0")"; pwd)

if [ ! -d "$APPDIR" ]
then
  mkdir -p "$APPDIR"
fi

if [ ! -f "$APPDIR/getdown.txt" ] 
then 
	cp "$DIR/getdown.txt" "$APPDIR"
fi

echo "Checking for updates. This might take a while..."
java -Dsilent=true -jar "$DIR/getdown-client.jar" "$APPDIR"

export X509_USER_PROXY="$HOME/.grid/grid.proxy"
java -cp "$APPDIR/gricli-binary.jar" grisu.gricli.Gricli $@


