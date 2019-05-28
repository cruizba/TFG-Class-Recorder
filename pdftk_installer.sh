#!/bin/bash
#
##############################################################################
#
# change to /tmp directory
cd /tmp
# download packages
wget http://ftp.br.debian.org/debian/pool/main/g/gcc-6/libgcj17_6.3.0-18+deb9u1_amd64.deb \
    http://launchpadlibrarian.net/337429932/libgcj-common_6.4-3ubuntu1_all.deb \
    http://old-releases.ubuntu.com/ubuntu/pool/universe/p/pdftk/pdftk-dbg_2.02-4build1_amd64.deb
echo -e "Packages for pdftk downloaded\n\n"
# install packages
echo -e "\n\n Installing pdftk: \n\n"
apt install -y ./libgcj17_6.4.0-8ubuntu1_amd64.deb \
    ./libgcj-common_6.4-3ubuntu1_all.deb \
    ./pdftk_2.02-4build1_amd64.deb \
    ./pdftk-dbg_2.02-4build1_amd64.deb
echo -e "\n\n pdftk installed\n"
echo -e "   try it in shell with: > pdftk \n"
# delete deb files in /tmp directory
rm ./libgcj17_6.4.0-8ubuntu1_amd64.deb
rm ./libgcj-common_6.4-3ubuntu1_all.deb
rm ./pdftk_2.02-4build1_amd64.deb
rm ./pdftk-dbg_2.02-4build1_amd64.deb