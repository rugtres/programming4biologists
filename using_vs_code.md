## Using Visual Studio Code

### Required files
Visual Studio Code (VSC) works by opening a folder and operating on the files inside that folder. 
In that folder, VSC requires a C++ file, typically called something like 'main.cpp' or alike, and
a CMakeLists.txt file, that indicates how the C++ file needs to be compiled.
The easiest way to set up a correct folder is by downloading these files here: 

- [`CMakeLists.txt`](https://github.com/HHildenbrandt/uwp_vscode_setup/blob/master/cmake-project/CMakeLists.txt)
- [`main.cpp`](https://github.com/HHildenbrandt/uwp_vscode_setup/blob/master/cmake-project/main.cpp)

You can download them by right-clicking on them and choosing 'Save As'. Place them in a new empty folder in which you 
want to work. Alternatively, you can download both jointly [here](https://github.com/HHildenbrandt/uwp_vscode_setup/tree/master/cmake-project).
Every time you start a new programming project, you can repeat this and copy these files into a new folder.

### Required extensions
If you have not done so during installation, you need the following extensions to make VSC work:
- `ms-vscode.cmake-tools` (CMake Tools)
- `ms-vscode.cpptools` (C/C++)
You can install these by navigating to the left-hand side menu. Click on the **Extensions** symbol ![ext](img/extensions.png). 
There, look for and install the extensions.

### Checking everything is installed correctly
With our files downloaded and extensions installed, we can now use VSC to open our working folder. In VSC, choose File -> Open Folder and 
open your folder. Then, select 'Yes, I trust these authors'. VSC will now show a drop down menu where you are to select your 'Kit'. A Kit
is the underlying compiler used by VSC. You can pick your favourite here 


