#!/bin/bash -e

echo "00-run.sh is running"

# install docker
on_chroot << EOF
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh
usermod -aG docker docker
EOF

# install docker-compose
on_chroot << EOF
pip3 -v install docker-compose
EOF
