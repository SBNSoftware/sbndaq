#! /bin/sh

mkdir -p ~/.local/share/jupyter/kernels
cp -r $ROOTSYS/etc/notebook/kernels/root ~/.local/share/jupyter/kernels
jupyter lab --no-browser
