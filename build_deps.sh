#!/bin/bash
OLD_PWD=$(pwd)
cd $(dirname ${BASH_SOURCE[0]})

if [ ! -d "$(pwd)/kernel" ]; then
 git clone --depth 1 https://github.com/raspberrypi/linux -b rpi-4.4.y "$(pwd)/kernel"
 cd "$(pwd)/kernel"
 git rev-parse HEAD > ../kernel-at-commit
fi

cd "$OLD_PWD"
