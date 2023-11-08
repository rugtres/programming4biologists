#!/bin/bash

CM=cmake-3.25.0-rc3-linux-x86_64.sh
CMURI="https://github.com/Kitware/CMake/releases/download/v3.25.0-rc3/${CM}"

wget ${CMURI}
chmod +x ${CM}
sudo /bin/bash -c "./${CM} --prefix=/usr/local --exclude-subdir"

sudo apt install ninja-build clang gdb -y

winget.exe install "Visual Studio Code" --source msstore

function install_code_extension () {
    code  --disable-gpu --install-extension $1 --force
    return 0
}

install_code_extension ms-vscode.cpptools
install_code_extension ms-vscode.cpptools-themes
install_code_extension ms-vscode.cpptools-extension-pack
install_code_extension ms-vscode.cmake-tools
install_code_extension ms-vscode-remote.remote-wsl

cp -r ./projects ~/
mv ~/projects ~/projects
