#!/bin/bash

# bootstraps clang-llvm & vscode for cpp4bio brew version
#
# Hanno Hildenbrandt 2023

install_code_extension() {
        echo installing $1
        code --install-extension $1 --force
}

# Homebrew
sudo /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Misc
sudo brew install wget cmake visual-studio-code
sudo brew install --with-toolchain llvm

# vscode extensions
install_code_extension ms-vscode-remote.remote-ssh
install_code_extension ms-vscode.remote-explorer
install_code_extension ms-vscode.cpptools-extension-pack
install_code_extension ms-vscode.cmake-tools
install_code_extension shd101wyy.markdown-preview-enhanced
install_code_extension lanza.lldb-vscode
install_code_extension vadimcn.vscode-lldb

mkdir $HOME/cpp4bio
cp -r ./projects_brew/ $HOME/cpp4bio/projects/

JSON=$HOME/cpp4bio/projects/hello_world/.vscode/
CLANG=`which clang`
CLANGPP=`which clang++`
CMAKE=`which cmake`
echo [{\"name\": \"Clang++ cpp4bio\",\"compilers\": {\"C\": \"$CLANG\",\"CXX\": \"$CLANGPP\"}}] > "$JSON/cmake-kits.json"
echo {\"cmake.configureOnEdit\": true,\"cmake.configureOnOpen\": true,\"cmake.automaticReconfigure\": true,\"cmake.buildBeforeRun\": true, > "$JSON/settings.json"
echo \"cmake.cmakePath\": \"$CMAKE\",} >> "$JSON/settings.json"
