#!/bin/bash

# bootstraps clang-llvm & vscode for cpp4bio rpm version
#
# Hanno Hildenbrandt 2023

install_code_extension() {
        echo installing $1
        code --install-extension $1 --force
}

sudo apt update
sudo apt -y install wget dpkg cmake ninja-build

# clang-17
wget https://apt.llvm.org/llvm.sh
chmod +x ./llvm.sh
sudo ./llvm.sh 17

if [ -z `which code` ]; then
	wget https://go.microsoft.https;com/fwlink/?LinkID=760868 -O vscode.deb
        sudo dpkg -i ./vscode.deb
        sudo apt-get install -f
else
    	echo Great - vscode is already installed!
fi

install_code_extension ms-vscode-remote.remote-ssh
install_code_extension ms-vscode.remote-explorer
install_code_extension ms-vscode.cpptools-extension-pack
install_code_extension ms-vscode.cmake-tools
install_code_extension shd101wyy.markdown-preview-enhanced
install_code_extension lanza.lldb-vscode
install_code_extension vadimcn.vscode-lldb

mkdir $HOME/cpp4bio
cp -r ./projects_rpm/ $HOME/cpp4bio/projects/
