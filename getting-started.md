## Getting Started
{:.no_toc}

Visual Studio Code (VSCode for short) is an advanced text editor that is cross-platform. 
It works on Windows, Mac, or Linux OS.
We will use VSCode to learn C++, so buckle up and let's get started!

* Table of Contents
{:toc}

### Windows OS / UWP
#### Install Visual Studio Code
##### UWP (X-drive)

1. Download the msys2 installer from https://www.msys2.org. 
2. Run the installer. Set `X:\msys64` as installation folder.
3. Download [this ![zip](img/zip.png) zip](https://github.com/HHildenbrandt/uwp_vscode_setup/archive/refs/heads/master.zip) and extract the folder to the Desktop. 
4. Run `setup_X.bat`. Accept all default choices and ignore warnings. Note that the command will take a long time on *uwp.rug.nl*.

##### Regular Windows (C-drive)

1. Download the msys2 installer from https://www.msys2.org. 
2. Run the installer. Keep the default installation folder (`C:\msys64`).
3. Download [this ![zip](img/zip.png) zip](https://github.com/HHildenbrandt/uwp_vscode_setup/archive/refs/heads/master.zip) and extract the folder to the Desktop. 
4. Run `setup_C.bat`. Accept all default choices and ignore warnings. (you may need to run this as administrator to make it work)

#### Launch Visual Studio Code

After installation, you can find the folder `vscode_projects` on the installation drive (`X:` or `C:`) and within it the file `launch_vscode.bat`. 
Use this script to run Visual Studio Code. It will open a pre-made project (`cmake-project`), which contains:
- a `CMakeLists.txt` file with compilation instructions.
- a `main.cpp` file with the C++ code.
- a `build` folder, created by Visual Studio Code, which you can ignore.

Click on the **Launch** button ![launch](img/launch.png) in the bottom menu. The programme `main.cpp` should compile and print "Hello CMake" to the screen.

### Mac OS

#### Install Visual Studio Code

1. [Download Visual Studio Code](https://go.microsoft.com/fwlink/?LinkID=534106) for macOS.
2. Open the browser's download list and locate the downloaded archive.
3. Extract the archive contents. Use double-click for some browsers or select the 'magnifying glass' icon with Safari.
4. Drag `Visual Studio Code.app` to the `Applications` folder, making it available in the macOS Launchpad.
5. Add VS Code to your Dock by right-clicking on the icon to bring up the context menu and choosing **Options, Keep in Dock**.

#### Launch Visual Studio Code and add Extensions
Open VSCode (Code) and navigate to the left-hand side menu. Click on the **Extensions** symbol ![ext](img/extensions.png). There, look for and install the following extensions:
- `ms-vscode.cmake-tools` (CMake Tools)
- `ms-vscode.cpptools` (C/C++)

<iframe style="width:100%; height:300px;" src="https://www.youtube.com/embed/BdNvJKxaBb4" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

*Watch on YouTube for higher video quality*

Download [this ![zip](img/zip.png) zip](https://github.com/rugtres/cmake-project/archive/refs/heads/main.zip), unzip it and open the project in Visual Studio Code.

### Linux OS

#### Install Visual Studio Code

1. Download [this ![zip](img/zip.png) zip](https://github.com/ClaireGuerin/bash-install-vscode/archive/refs/heads/main.zip).
2. Extract the folder with your archive manager or in command line with `unzip path/to/folder`.
3. Open your terminal and navigate to where the folder is with `cd path/to/unzipped/folder`.
4. Make sure the file `install_vscode.sh` is executable with `ls -l`. The marker `x` before the file name should indicate execute mode. If not, make the file executable with `chmod +x install_vscode.sh`. 
5. Execute the bash file with `source install_vscode.sh`. If you are not in root, you will be prompted for your password.

*These instructions are for Linux Distributions with `apt`, such as Ubuntu or Debian for instance. You will need admin rights to install VSCode.*

#### Launch Visual Studio Code

The app should open automatically upon completion of the installation. It will open a pre-made project (`cmake-project`), which contains:
- a `CMakeLists.txt` file with compilation instructions.
- a `main.cpp` file with the C++ code.
- a `build` folder, created by Visual Studio Code, which you can ignore.

Click on the **Launch** button ![launch](img/launch.png) in the bottom menu. The programme `main.cpp` should compile and print "Hello CMake" to the screen.

<iframe style="width:100%; height:800px;" src="https://www.youtube.com/embed/zu-PqYz2xCk" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

*Watch on YouTube for higher video quality*

*It might be that upon opening Visual Studio Code, some of the installed extensions are disabled. This is because you are using VS code in restricted mode. 
Just click on **Trust**, and you're good to go!*

[![Home](/img/home.jpg)](https://rugtres.github.io/programming4biologists/)