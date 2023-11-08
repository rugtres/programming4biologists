#!/bin/bash

CM=cmake-3.25.0-rc3-linux-x86_64.sh
CMURI="https://github.com/Kitware/CMake/releases/download/v3.25.0-rc3/${CM}"

wget ${CMURI}
chmod +x ${CM}
sudo /bin/bash -c "./${CM} --prefix=/usr/local --exclude-subdir"

sudo apt install cmake ninja-build clang gdb -y

VS=code-stable-x64-1667319089.tar.gz
VSURI=https://az764295.vo.msecnd.net/stable/8fa188b2b301d36553cbc9ce1b0a146ccb93351f/${VS}

wget ${VSURI}
tar -xf ${VS} --directory ~/
mv ~/VSCode-linux-x64 ~/vscode
mkdir ~/vscode/data

function install_code_extension () {
    ~/vscode/bin/code --disable-gpu --install-extension $1 --force
    return 0
}

install_code_extension ms-vscode.cpptools
install_code_extension ms-vscode.cpptools-themes
install_code_extension ms-vscode.cpptools-extension-pack
install_code_extension ms-vscode.cmake-tools

cp -r ./projects ~/
mv ~/projects ~/projects
sudo ln -s ~/vscode/bin/code /usr/local/bin/code
