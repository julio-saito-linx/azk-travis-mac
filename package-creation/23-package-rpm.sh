#!/bin/bash
set -ev

export DISTRO=fedora20
rm -Rf package/${DISTRO}
mkdir -p package/${DISTRO}/packages
# copia os arquivos para a pasta
cp -Rf package/rpm/* package/${DISTRO}/packages

# importando assinaturas
echo "%_signature gpg" > ~/.rpmmacros
echo "%_gpg_name everton@azukiapp.com" >> ~/.rpmmacros

# sem senha mesmo
(cd package/${DISTRO}/packages && rpm --resign *.rpm)

# sem senha mesmo
createrepo package/${DISTRO}