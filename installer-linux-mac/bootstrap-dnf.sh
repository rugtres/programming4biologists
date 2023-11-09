#!/bin/bash

# bootstraps clang-llvm & vscode for cpp4bio dnf version
#
# Hanno Hildenbrandt 2023

install_code_extension() {
        echo installing $1
        code --install-extension $1 --force
}

sudo dnf update
sudo dnf install clang lldb cmake ninja-build


if [ -z `which code` ]; then
	sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
        dnf check-update
        sudo dnf -y install code
else
    	echo Great - vscode is already installed!
fi

install_code_extension ms-vscode-remote.remote-ssh
inst
all_code_extension ms-vscode.remote-explorer
install_code_extension ms-vscode.cpptools-extension-pack
install_code_extension ms-vscode.cmake-tools
install_code_extension shd101wyy.markdown-preview-enhanced
install_code_extension lanza.lldb-vscode

mkdir $HOME/cpp4bio
cp -r ./projects_rpm/ $HOME/cpp4bio/projects/

