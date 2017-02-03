#!/bin/bash

# sed -i "s|#PREFIX=.*|PREFIX=\"$SP_DIR\"|" build_config.py
# sed -i "s|#APBS=.*|APBS=\"$(which apbs)\"|" build_config.py
# cat build_config.py
#
# conda install -y -n root 'python<=2.7.99' numpy scons
#
# /opt/conda/bin/python2 scons/scons.py install

python setup.py install --single-version-externally-managed --record=record.txt
ln -s main.py $SP_DIR/pdb2pqr/__main__.py

# Tests
# conda env remove -n scons -y || true
# conda create -yf -n scons python scons
# cd $SRC_DIR/pdb2pqr
# /opt/conda/envs/scons/bin/scons scons/scons.py local-test
