#!/bin/bash

# bootstraps clang-llvm & vscode for cpp4bio rpm version
#
# Hanno Hildenbrandt 2023

install_code_extension() {
        echo installing $1
        code --install-extension $1 --force
}

# Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Misc
brew install wget cmake visual-studio-code
brew install --with-toolchain llvm

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
