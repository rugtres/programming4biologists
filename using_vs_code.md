## Using Visual Studio Code

### Required files
Visual Studio Code (VSC) works by opening a folder and operating on the files inside that folder. 
In that folder, VSC requires a C++ file, typically called something like 'main.cpp' or alike, and
a CMakeLists.txt file, that indicates how the C++ file needs to be compiled.
The easiest way to set up a correct folder is by downloading these files here: 

- [`CMakeLists.txt`](https://github.com/HHildenbrandt/uwp_vscode_setup/blob/master/cmake-project/CMakeLists.txt)
- [`main.cpp`](https://github.com/HHildenbrandt/uwp_vscode_setup/blob/master/cmake-project/main.cpp)

You can 
download them by right-clicking on them and choosing 'Save As'. Place them in a new empty folder in which you 
want to work. Alternatively, you can download both jointly [here](https://github.com/HHildenbrandt/uwp_vscode_setup/tree/master/cmake-project).
Every time you start a new programming project, you can repeat this and copy these files into a new folder.

### Required extensions
If you have not done so during installation, you need the following extensions to make VSC work:
- `ms-vscode.cmake-tools` (CMake Tools)
- `ms-vscode.cpptools` (C/C++)
You can install these by navigating to the left-hand side menu. Click on the **Extensions** symbol ![ext](img/extensions.png). 
There, look for and install the extensions.

### Checking everything is installed correctly
With our files downloaded and extensions installed, we can now use VSC to open our working folder. In VSC, choose File -> Open Folder... and 
open your folder. Then, select 'Yes, I trust these authors'. VSC will now show a drop down menu where you are to select your 'Kit'. A Kit
is the underlying compiler used by VSC. You can pick your favourite here, or pick 'unspecified' if you don't know, both work fine. 
If the kit selection menu disappeared (because you navigated back to this webpage for instance), you can make it reappear by pressing
CTRL+SHIFT+P (or CMD + SHIFT + P on macos). 
Your VSC will now look similar to this:
<img src="https://raw.githubusercontent.com/rugtres/programming4biologists/gh-pages/img/vscode.png" width = 500>

At the bottom of VSC, there are three buttons: Build, Debug and Run, identified by the associated pictograms: a gear icon, a turtle icon and a play icon.
If you press the play icon, your code will execute, and it will display 'Hello CMake'! Congratulations, you just compiled, built and ran your C++ program!
If these buttons are not available, this indicates that you are missing the CMake Tools extension. Please see the section above to install this.

### Debugging
An important tool in programming is to be able to break your program at a specific line, and execute the program step-by-step. You can also do this in VSC. 
To do this, first click left of line 6 in your code to create a bright red dot next to the line. This indicates that we want to pause our program at this 
location. Then, select the 'Run and Debug' menu on the left, indicated by the turtle and play icon. 
Here, click on 'Run and Debug'. VSC will now ask you what environment to choose, choose the environment appropriate for your operating system. 

