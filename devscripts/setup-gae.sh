#!/bin/sh

# Download the required libraries to lib/

BUILD_DIR=./build/gae-setup
LIB_DIR=./lib
echo "Downloading python packages"
pip install -r requirements.txt --download-cache tmp/cache --no-install --build "${BUILD_DIR}"

echo "Copying python packages to ${LIB_DIR}"
mkdir -p "${LIB_DIR}"
cp -R "${BUILD_DIR}/Paste/paste" "${LIB_DIR}"
cp -R "${BUILD_DIR}/youtube-dl/youtube_dl" "${LIB_DIR}"

(
    cd "${LIB_DIR}/youtube_dl"
    echo 'Patching youtube_dl'
    sed 's/import fcntl/# Removed fcntl import/g' utils.py > utils.py.temp
    mv utils.py.temp utils.py
)

rm -rf "${BUILD_DIR}"

