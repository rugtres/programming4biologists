#!/bin/bash

# bootstraps clang-llvm & vscode for cpp4bio dnf version
#
# Hanno Hildenbrandt 2023

install_code_extension() {
        echo installing $1
        code --install-extension $1 --force
}

sudo pacman -S --noconfirm git cmake wget clang lldb code

install_code_extension ms-vscode.cpptools-extension-pack
install_code_extension ms-vscode.cmake-tools
install_code_extension shd101wyy.markdown-preview-enhanced
install_code_extension vadimcn.vscode-lldb

mkdir $HOME/cpp4bio
cp -r ./projects_pacman/ $HOME/cpp4bio/projects/
