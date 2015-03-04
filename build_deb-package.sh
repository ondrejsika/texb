#!/bin/sh

mkdir -p deb-package/usr/bin
cp src/texb deb-package/usr/bin/texb
cp src/texbx-git deb-package/usr/bin/texbx-git

mkdir -p _build
dpkg-deb --build deb-package _build/texb_1~ondrejsika-1_all.deb

