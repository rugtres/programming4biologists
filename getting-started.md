## Getting Started
{:.no_toc}

Visual Studio Code (VSCode for short) is an advanced text editor that is cross-platform. 
It works on Windows, Mac, or Linux OS.
We will use VSCode to learn C++, so buckle up and let's get started! Follow the instructions below to install VSCode on your computer **before the start of the course**, be it Windows, Mac or Linux.

*Done installing?* Congratulations, you're all set! Head to our further instructions for [Using Visual Studio Code](https://rugtres.github.io/programming4biologists/using-vs-code) to learn more on how to use VSCode and CMake for C++.

* Table of Contents
{:toc}

### Windows OS

* Access the shared [folder](https://drive.google.com/drive/folders/1D3FQNhDLFY7mzvIzMqOtc9LIBlh_yaRr?usp=share_link) and download `cpp4pio_2023.zip`.
* Open the downloaded `cpp4bio_2023.zip`archive and move the containing folder `cpp4bio` to your Desktop. This will take some time!

#### Launch Visual Studio Code (Windows)
* Navigate to `cpp4bio/vscode/` and open (double-click) `Code.exe`. 

![run vscode](img/run_vscode.png)

* On the File tab at the top left corner press `Open folder`. 

![open folder](img/open_folder.png)

* Select `cpp4bio/projects/hello_world/`.
* Press the Kit button on the bottom bar  and select `Clang++ cpp4bio`. 

![choose compiler](img/choose_compiler.png)

* Click on `main.cpp` and press the **Launch**![launch](img/launch.png) button on the bottom bar to run, or the bug button to run the debugger. Both these steps should compile and print `Hello world!` to the console.
* You have now correctly installed VS Code and the necessary tools for the course.

### Mac OS

Access the shared [folder](https://drive.google.com/drive/folders/1D3FQNhDLFY7mzvIzMqOtc9LIBlh_yaRr?usp=share_link) and download `cpp4pio_linux_mac_2023.zip`.
Extract the archive to your home folder.

#### Install homebrew

Open a terminal and run:

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Next, while still in the terminal, run:

```bash
cd ~/cpp4bio_linux_mac_2023
chmod +x ./bootstrap-brew.sh
./bootstrap-brew.sh
```

### Linux OS

Access the shared [folder](https://drive.google.com/drive/folders/1D3FQNhDLFY7mzvIzMqOtc9LIBlh_yaRr?usp=share_link) and download `cpp4pio_linux_mac_2023.zip`.
Extract the archive to your home folder.

Open a terminal and run:

```bash
cd ~/cpp4bio_linux_max_2023
chmod +x ./bootstrap-*

# if your package manager is 'apt' (Debian, Ubuntu, Mint) run:
./bootstrap-apt.sh

# else if your package manager is 'dnf' (Fedora, Red Hat) run:
./bootstrap-dnf.sh

# else if your package manager is 'pacman' (Arch, Manjaro) run:
./bootstrap-pacman.sh
```
#### Launch Visual Studio Code (Mac, Linux)

An most platforms, you should find `Code` or `Visual Studio Code` as application.
Open it the "usual" way.

Alternatively, open a terminal and run:

```bash
code .
```

Inside Visual Studio Code
* If a 'Do you trust the authors of the files in this folder?' dialog shows up, accept.
* On the File tab at the top left corner press `Open folder`. 

![open folder](img/open_folder.png)

* Open `home/cpp4bio/projects/hello_world/`.
* Press the Kit button on the bottom bar  and select `Clang++ cpp4bio`. 

![choose compiler](img/choose_compiler.png)

* Click on `main.cpp` and press the **Launch**![launch](img/launch.png) button on the bottom bar to run, or the bug button to run the debugger. If prompted, select `(lldb) launch`. Both these steps should compile and print `Hello world!` to the console.
* You have now correctly installed VS Code and the necessary tools for the course.

*It might be that upon opening Visual Studio Code, some of the installed extensions are disabled. This is because you are using VS code in restricted mode. 
Just click on **Trust**, and you're good to go!*

[![Home](/img/home.jpg)](https://rugtres.github.io/programming4biologists/)
