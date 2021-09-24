#!/bin/bash
for pkgName in $(cat packages-new.txt)

do
  pacman -S --noconfirm $pkgName
done
echo "Installed all packages."


