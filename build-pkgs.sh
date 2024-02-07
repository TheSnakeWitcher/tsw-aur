#!/bin/sh

PKGBUILDS_DIR="./pkgbuilds"
PKGS_DIR="pkgs"
PKG_EXTENSION="pkg.tar.zst"


DIRS="$PKGBUILDS_DIR/*/" 
for PKG_DIR in $DIRS ; do
    cd $PKG_DIR
    PKG_NAME=$(pwd | xargs basename)

    if ! [[ -f ./PKGBUILD ]] ; then
        echo ":: skiping $PKG_NAME"
        cd ../..
        continue
    fi

    echo ":: building $PKG_NAME"
    makepkg -c
    mv *.$PKG_EXTENSION ../../$PKGS_DIR
    cd ../..
done
