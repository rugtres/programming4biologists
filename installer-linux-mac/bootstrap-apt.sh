#!/bin/bash

# bootstraps clang-llvm & vscode for cpp4bio apt version
#
# Hanno Hildenbrandt 2023

install_code_extension() {
        echo installing $1
        code --install-extension $1 --force
}

instal_llvm() {
        sudo apt update
        sudo apt -y install wget dpkg cmake ninja-build
        wget https://apt.llvm.org/llvm.sh
        chmod +x ./llvm.sh
        sudo ./llvm.sh 17
}

# install_llvm

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

if [ ! -e $HOME/cpp4bio ]; then
        mkdir $HOME/cpp4bio
fi
cp -r ./projects_apt/ $HOME/cpp4bio/projects/

JSON=$HOME/cpp4bio/projects/hello_world/.vscode/
CLANG=`which clang-17`
CLANGPP=`which clang++-17`
CMAKE=`which cmake`
echo [{\"name\": \"Clang++ cpp4bio\",\"compilers\": {\"C\": \"$CLANG\",\"CXX\": \"$CLANGPP\"}}] > "$JSON/cmake-kits.json"
echo {\"cmake.configureOnEdit\": true,\"cmake.configureOnOpen\": true,\"cmake.automaticReconfigure\": true,\"cmake.buildBeforeRun\": true, > "$JSON/settings.json"
echo \"cmake.cmakePath\": \"$CMAKE\",} >> "$JSON/settings.json"
