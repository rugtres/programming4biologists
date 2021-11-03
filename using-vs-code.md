## Using Visual Studio Code
{:.no_toc}

1. Table of Contents
{:toc}

### Required files

Visual Studio Code (VSC) works by opening a folder and operating on the files inside that folder. 
In such folder, VSC requires a C++ file, typically called `main.cpp`, and a `CMakeLists.txt` file, which indicates how the C++ file needs to be compiled.
The easiest way to set up a correct folder is by downloading these files here: 

- [`CMakeLists.txt`](https://github.com/HHildenbrandt/uwp_vscode_setup/blob/master/cmake-project/CMakeLists.txt)
- [`main.cpp`](https://github.com/HHildenbrandt/uwp_vscode_setup/blob/master/cmake-project/main.cpp)

*Normally, if you followed all the instructions for [Getting Started](https://rugtres.github.io/programming4biologists/getting-started), you should already have these two files in a folder named `cmake-project`.*

In case you do not already have these files:

1. Download them by right-clicking on them and choosing **Save As**. 
2. Place them in a new empty folder in which you want to work. 

Alternatively, you can: 

1. Download both jointly as a [zip ![zip](img/zip.png) folder](https://github.com/rugtres/cmake-project/archive/refs/heads/main.zip). 
2. Unzip the folder wherever you like on your machine.

*Every time you start a new programming project, you can repeat this and copy these files into a new folder.*

### Required extensions

If they haven't been installed while [Getting Started](https://rugtres.github.io/programming4biologists/getting-started), you need to install the following extensions to make VSC work:

- `ms-vscode.cpptools` (C/C++)
- `ms-vscode.cmake-tools` (CMake Tools)

Install these by navigating to the left-hand side menu. Click on the **Extensions** symbol ![ext](img/extensions.png). 
There, look for and install the extensions.

### Checking everything is installed correctly

With our files downloaded and extensions installed, we can now use VSC to open our working folder. 

1. In VSC, choose **File, Open Folder...** and open your folder. 
2. If asked, select **Yes, I trust these authors**. 
3. VSC will now show a drop down menu where you are to select your **Kit**. A Kit is the underlying compiler used by VSC. You can pick your favourite here, or pick 'unspecified' if you don't know, both work fine. *If the kit selection menu disappeared (because you navigated back to this webpage for instance), you can make it reappear by pressing **CTRL+SHIFT+P** (**CMD+SHIFT+P** on macOs).* Your VSC will now look similar to this: <img src="https://raw.githubusercontent.com/rugtres/programming4biologists/gh-pages/img/vscode.png" width = 500> The bottom has three important buttons: Build ![gear](img/gear_icon.png), Debug ![bug](img/debug_icon.png) and Run ![launch](img/launch.png). 
4. Press the play icon ![launch](img/launch.png) to execute your code, and it will display `Hello CMake` in the terminal panel. 
5. Congratulations, you just compiled, built and ran your C++ program!

*If the buttons are not available, this indicates that you are missing the CMake Tools extension. Please see the section above to install this.*

### Debugging

An important tool in programming is to be able to break your program at a specific line, and execute the program step-by-step. Depending on the lecture track you choose, you might learn to do this during the course.

1. In Visual Studio Code, click left of line 6 in your code to create a bright red dot next to the line. This indicates that we want to pause our program at this location. 
2. Select the **Run and Debug** menu on the left, indicated by the play icon with a small bug in front of it.
3. There, click on the **Run and Debug** bar. 
4. Visual Studio Code will ask you what environment to choose. Choose the environment appropriate for your operating system. 
5. Visual Studio Code will give an error, and ask you to create a `launch.json` file. Click on **create launch.json** file to do so. This will open a new `launch.json` file in VSC. 
6. Change the entry at `program`, to make sure that it points towards your executable. The location of that executable may vary depending on your operating system. The best way to find out is to press the 'play' button. This will show you the location of your executable: <img src="https://raw.githubusercontent.com/rugtres/programming4biologists/gh-pages/img/program_link.png" width = 500>
7. Copy that link (in this case, */Users/janzen/vscode_example/build/cmake-project*, where `cmake-project` is our executable. On Windows, you can expect something like *C:\\vscode_example\\build\\Debug\\cmake-project.exe*). 
8. Paste it in the right position in your `launch.json` file. <img src="https://raw.githubusercontent.com/rugtres/programming4biologists/gh-pages/img/launch_json_macos.png" width = 500>
9. Run the program in Debug mode by pressing F5 (there is no button in the program, only F5 works). 
10. The program stops at line 6, which you marked with a breakpoint (the little red dot to the left of the line). Well done, you're now ready to debug!

[![Home](/img/home.jpg)](https://rugtres.github.io/programming4biologists/)
