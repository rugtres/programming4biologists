## Install Homebrew

Open a terminal and run
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## Install Visual Studio Code

While still in the terminal run
```
brew install wget cmake
brew install --cask visual-studio-code
code --install-extension ms-vscode.cpptools --force
code --install-extension ms-vscode.cpptools-themes --force
code --install-extension ms-vscode.cpptools-extension-pack --force
```

Now copy the `projects` folder to your home-directory.</br>
Start Visual Studio Code and select `Open folder...` from the `File` menu.</br>
Navigate to `projects/hello_world`

