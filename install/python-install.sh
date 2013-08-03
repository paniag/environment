#!/bin/bash
## python-install.sh
## Mac Radigan

easy_install -U distribute
easy_install pip
pip install --upgrade numpy
easy_install pyopengl
easy_install mako
easy_install pyopencl
easy_install GDAL
pip install numexpr
pip install cython
pip install tables

## *EOF*
