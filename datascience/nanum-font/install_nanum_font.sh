#!/bin/bash
echo "Installing nanum fonts in oci os user"

rm -f ./NamunGothic.zip
wget https://fonts.google.com/download?family=Nanum%20Gothic  -O NamunGothic.zip

DIR="/home/datascience/.local/share/fonts/NanumFont"
rm -f $DIR
rmdir -f $DIR
mkdir -p $DIR
unzip ./NamunGothic.zip -d $DIR
rm -f ./NamunGothic.zip

echo "Delete Matplotlib's font cache file."
rm -f /home/datascience/.cache/matplotlib/fontlist-v310.json
echo ""
echo ""
echo "====List of installed Nanum Fonts."
echo ""
fc-list|grep Nanum
echo ""
echo ""
