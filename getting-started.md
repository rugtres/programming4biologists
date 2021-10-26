## Getting Started
{:.no_toc}

Visual Studio Code (VSCode for short) is an advanced text editor that is cross-platform. 
It works on Windows, Mac, or Linux OS.
We will use VSCode to learn C++, so buckle up and let's get started!

* Table of Contents
{:toc}

### Windows OS / UWP
#### Install on UWP (X-drive)

1. Download the msys2 installer from https://www.msys2.org. 
2. Run the installer. Set *X:\msys64* as installation folder.
3. Download [this ![zip](img/zip.png) zip](https://github.com/HHildenbrandt/uwp_vscode_setup/archive/refs/heads/master.zip) and extract the folder to the Desktop. 
4. Run `setup_X.bat`. Accept all default choices and ignore warnings. Note that the command will take a long time on *uwp.rug.nl*.

#### Install on regular Windows (C-drive)

1. Download the msys2 installer from https://www.msys2.org. 
2. Run the installer. Leave the installation folder at default (*C:\msys64*)
3. Download [this ![zip](img/zip.png) zip](https://github.com/HHildenbrandt/uwp_vscode_setup/archive/refs/heads/master.zip) and extract the folder to the Desktop. 
4. Run `setup_C.bat`. Accept all default choices and ignore warnings.

#### Launch Visual Studio Code

After installation, you can find the folder *vscode_projects* on the installation drive (*X: or C:*) and within it the file `launch_vscode.bat`. 
Use this script to run VSCode.

### Mac OS

### Linux OS

#### Install

1. Download [this ![zip](img/zip.png) zip](https://github.com/ClaireGuerin/bash-install-vscode/archive/refs/heads/main.zip).
2. Extract the folder with with your archive manager or in command line with `unzip path/to/folder`.
3. Open your terminal and navigate to where the folder is with `cd path/to/unzipped/folder`.
4. Make sure the file `install_vscode.sh` is executable with `ls -al`. The marker `x` before the file name should indicate execute mode. If not, make the file executable with `chmod +x install_vscode.sh`. 
5. Execute the bash file with `source install_vscode.sh`. If you are not in root, you will be prompted for your password.

*These instructions are for Linux Distributions with `apt`, such as Ubuntu or Debian for instance. You will need admin rights to install VSCode.*

#### Launch Visual Studio Code

Open the app as you would any other application. 
It might be that upon opening Visual Studio Code, some of the installed extensions are disabled. This is because you are using VS code in restricted mode. 
Just click on *Trust*, and you're good to go!

[![Home](/img/home.jpg)](https://rugtres.github.io/programming4biologists/)
