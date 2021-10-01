#!/bin/bash -e

# install docker
on_chroot << EOF
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh
usermod -aG docker pi
EOF
