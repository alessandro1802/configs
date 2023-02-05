#!/bin/bash

cwd=$(pwd)

cd ~/.bin/py/downloadYT
source venv/bin/activate
python download.py $1 $2
