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
pip install geopy
pip install pandas
#easy_install pykml
pip install pyshp
pip install SQLAlchemy
pip install Django==1.6.1
pip install matplotlib 
pip install scipy 
pip install sympy 
pip install nose
pip install -U ipython
pip install pyzmq
pip install pyhull
pip install PIL
pip install appy
#easy_install pyalsa
#pip install pyalsa
easy_install BeautifulSoup
easy_install blist

## *EOF*
