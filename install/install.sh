#!/bin/bash
## install.sh

opt=/opt

## scilab
mkdir scilab
cd scilab
wget http://www.scilab.org/download/5.3.3/scilab-5.3.3.bin.linux-x86_64.tar.gz
tar -zxvf scilab-5.3.3.bin.linux-x86_64.tar.gz
rsync -avhr scilab-5.3.3.bin.linux-x86_64 ${opt}
(cd ${opt}; ln -s scilab-5.3.3.bin.linux-x86_64 scilab)

## cuda
mkdir cuda
cd cuda
wget http://developer.download.nvidia.com/compute/cuda/5_0/rel-update-1/installers/cuda_5.0.35_linux_64_rhel6.x-1.run
chmod 775 cuda_5.0.35_linux_64_rhel6.x-1.run
yes | ./cuda_5.0.35_linux_64_rhel6.x-1.run

## octave sources
mkdir octave
cd octave
wget ftp://ftp.gnu.org/gnu/octave/octave-3.6.4.tar.gz
tar -zxvf octave-3.6.4.tar.gz
rsync -avhr Soctave-3.6.4 ${opt}
(cd ${opt}; ln -s octave-3.6.4 octave)

## octave dependencies
mkdir suitesparse
cd suitesparse
wget http://www.cise.ufl.edu/research/sparse/SuiteSparse/SuiteSparse-4.2.1.tar.gz
tar -zxvf SuiteSparse-4.2.1.tar.gz
rsync -avhr SuiteSparse-4.2.1 ${opt}
(cd ${opt}; ln -s SuiteSparse-4.2.1 SuiteSparse)

## openmapserver
wget http://download.osgeo.org/mapserver/mapserver-6.2.1.tar.gz
wget http://download.osgeo.org/mapserver/mapcache-1.0.0.tar.gz
wget http://download.osgeo.org/mapserver/tinyows-1.1.0.tar.bz2
wget http://download.osgeo.org/mapserver/mapserver-suite-12.11.tar.gz

## qemu
wget http://wiki.qemu-project.org/download/qemu-1.4.1.tar.bz2

## *EOF*
