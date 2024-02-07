#!/bin/sh


REPO="tsw-aur"
REPO_EXTENSION="db.tar.gz"
PKG_EXTENSION="pkg.tar.zst"


repo-add ./repo/x86_64/$REPO.$REPO_EXTENSION ./pkgs/*.$PKG_EXTENSION -n
