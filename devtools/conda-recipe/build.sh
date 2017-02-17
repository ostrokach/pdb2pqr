#!/bin/bash

python setup.py install --single-version-externally-managed --record=record.txt
ln -s main.py $SP_DIR/pdb2pqr/__main__.py
