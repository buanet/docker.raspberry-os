#!/bin/bash -e

# install docker
on_chroot << EOF
curl -sSL https://get.docker.com | sh
usermod -aG docker docker
EOF

# install docker-compose
on_chroot << EOF
pip3 -v install docker-compose
EOF
