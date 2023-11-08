# installer-linux-mac

Collection of install scripts for various distributions.

Download [this repository as zip](https://github.com/rugtres/programming4biologists/archive/refs/heads/main.zip) and extract the folder `installer-linux-mac` to your home folder.

Open a terminal and run:

```
cd $HOME/installer-linux-mac
chmod +x ./bootstrap*
```

The next steps depends on your platform/distrubution. They are organized it by the package-manager used. Look for the instructions below that match your system best...

## apt (Ubuntu, Debian, Mint)

```
./bootstrap-apt.sh
```

## brew (MacOS)

OK, MacOS is based on BSD but close enough to Linux... <br>

### Install homebrew


```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Next,

```
./bootstrap-brew.sh
```

## rpm/dnf (Fedora, Red Hat)

```
./bootstrap-rpm.sh
```

## Whats next

If(!) the scripts worked, you can find a folder `cpp4bio` in your home directory and
within the folder `projects` that contains our first vscode project. Let's try to open it
with visual studio code:

```
cd ~/cpp4bio/hello_world
code .
```
