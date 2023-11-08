# MinGW's clang toolchain, vscode, cmake on unprivileged Windows.

Installation of the stuff in 'user-land'. No pre-installed software or admin-rights needed. 

## Download as blob

A pre-configured `cpp4bio` root folder could be found [in our shared folder](https://drive.google.com/drive/folders/1D3FQNhDLFY7mzvIzMqOtc9LIBlh_yaRr?usp=share_link).<br>
Download `cpp4bio_2023.zip`, open the `zip` file and move the contained folder `cpp4bio` to your Desktop.

## Generate the root folder

### Local

Download [this repository as zip](https://github.com/HHildenbrandt/uwp_vscode_setup/archive/refs/heads/master.zip)
and extract it to, say, your Desktop. **Don't extract to an network-share** as this would break things.<br>
Open the extracted folder and run (double-click) `bootstrap.bat`.<br>
After quite some time, File Explorer will open our `cpp4bio` root folder.

### External drive

Download [this repository as zip](https://github.com/HHildenbrandt/uwp_vscode_setup/archive/refs/heads/master.zip)
and extract it to, say, your Desktop. **Don't extract to an network-share** as this would break things.<br>
Open the extracted folder and type `powershell` + `Enter` in the File Explorer Address bar to open a terminal.
In the terminal, type:

```powershell
.\bootstrap.bat D:
```

Replace `D:` with the drive-letter of your external drive.<br>
Press `Enter` to start the (lengthy) installation process.<br>
Once the install is done, File Explorer will open our `cpp4bio` root folder.<br>
To close the terminal, type:

```powershell
exit
```

And press `Enter`.

## Tools

* [Standalone wget.exe](https://github.com/webfolderio/wget-windows.git).
* [Msys2 Software Distribution and Building Platform for Windows](https://www.msys2.org/).
* [Visual Studio Code](https://code.visualstudio.com).

## Release notes

### 2023

* `clang-17`, `llvm`, `MImode: lldb` from the `ucrt` branch.
* `bootstrap.bat` downloads and installs msys2.<br>
Selects appropriate default install path (`%HOMEDRIVE%%HOMEPATH%\Desktop` for UWP,<br>
`%HOMEDRIVE%%HOMEPATH%\Desktop` for FSE and local Windows).<br>
No user interaction needed.<br>
Portable install.<br>
Creates `cpp4bio` folder in the installation root (should be portable).
* `bootstrap.bat <DriveLetter>` creates portable install on external drive.
* First project is `cpp4bio\projects\hello_world`.
* New projects can be created by simply 'copy & rename' an existing one (as long as under `projects\`).
* `projects\xyz\.vscode` contains a bunch of specialized `.json` files.<br>
Automates cmake configure (`.vscode\settings.json`).<br>
Empty `"args": []` property in `.vscode\launch.json`.<br>
(Re)build task in `.vscode\tasks.json`.<br>
Much cleaner debugging experience.
* `projects\xyz\CMakeList.txt` copes with whitespaces in project folder names.<br>
`main.cpp` is the only remaining hard-coded dependency.<br>
Binaries are build as `projects\xyz\build\<FolderName>.exe` (whitespaces replaced with `'_'`).<br>
Static link.
* Project folders can be copied & renamed. Run the script `cleanup.bat` in the new folder.
before you open it in `vscode`.