#!/bin/bash
set -ev

# clean package folder
sudo rm -Rf package

# creating debian package
make package_deb

# creating rpm package
make package_rpm
