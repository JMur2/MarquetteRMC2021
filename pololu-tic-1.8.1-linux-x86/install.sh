#!/usr/bin/env sh
set -ue
cd "$(dirname "$0")"
rm -vrf /usr/local/share/pololu-tic
mkdir -v /usr/local/share/pololu-tic
cp ticcmd ticgui *.ttf LICENSE.html /usr/local/share/pololu-tic
ln -vsf /usr/local/share/pololu-tic/ticcmd /usr/local/bin/
ln -vsf /usr/local/share/pololu-tic/ticgui /usr/local/bin/
cp -v 99-pololu.rules /etc/udev/rules.d/
