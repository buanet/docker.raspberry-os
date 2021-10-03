#!/bin/bash -e

# install docker
on_chroot << EOF
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh
usermod -aG docker pi
EOF

# fix libseccomp2 version
on_chroot << EOF
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 04EE7237B7D453EC 648ACFD622F3D138
echo "deb http://deb.debian.org/debian buster-backports main" | tee -a /etc/apt/sources.list.d/buster-backports.list
apt update
apt install -t buster-backports libseccomp2
EOF