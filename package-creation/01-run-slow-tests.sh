#!/bin/bash
set -ev

# clean lib folder
sudo rm -Rf node_modules lib/azk lib/nvm lib/spec

# compile azk
make

# stoping any agent
bin/azk agent stop

# running all tests
bin/azk agent start
bin/azk nvm grunt slow_test
