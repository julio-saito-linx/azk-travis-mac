#!/bin/bash
set -ev

# update package image
docker pull azukiapp/fpm

# call publish script from the container
bin/azk shell package -c 'bash package-creation/22-package-deb-14.sh' -e AZK_VERSION=$AZK_VERSION
