#!/bin/env bash


_install() {
  tool=$1
  if ! type $tool >/dev/null; then
    echo "[INFO] Installing $tool ..."
    sudo apt-install $tool	
  else
    echo "[INFO] $tool is already avilable"
  fi
}
## Creating working folders
# This is the structures I liked

mkdir -p Fast Slow Cloud/github Cloud/dropbox Cloud/goodledrive Local/archive Fast/programming/python


## Install my faviour apps
# Jupyter
# pip install jupyterlab
# jupyter-lab		# launching it

