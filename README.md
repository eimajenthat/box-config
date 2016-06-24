# Jamie's Box Configuration Scripts

## What's it do?
- Install the applications listed in the packages/ directory, using various package managers.
- Configure path for your convenience
- Link in various config files (dotfiles) to your home directory
- Keeps everything in one tidy place, for easy deployment

## Install

### Windows
On Windows, open PowerShell or CMD and run:
```
START http://boxstarter.org/package/url?https://raw.githubusercontent.com/eimajenthat/box-setup/install/win.ps1
```
or open [this link](http://boxstarter.org/package/url?https://raw.githubusercontent.com/eimajenthat/box-setup/install/win.ps1) in IE/Edge.

### OS X
On Mac, open Terminal and run:
```
curl -s https://raw.githubusercontent.com/eimajenthat/box-setup/install/osx.sh | sudo sh
```

### Linux
On APT-based Linux distros (Ubuntu, Debian, etc.) with a GUI, open a terminal and run:
```
curl -s https://raw.githubusercontent.com/eimajenthat/box-setup/install/lin.sh | sudo sh
```

On CLI-only Linux machines (ie. servers), run:
```
curl -s https://raw.githubusercontent.com/eimajenthat/box-setup/install/common.sh | sudo sh
```

## To Do
- Symlinking of dotfiles
- All the comments in the scripts that describe things to do, but don't do them
- Install script for desktop linux
- Support for yum, as well as apt
- Scripts to extract list of installed packages into package list files.


## Reference and Credits
Heavily inspired by these projects:
https://github.com/Rican7/dotfiles
https://github.com/mathiasbynens/dotfiles
https://github.com/holman/dotfiles

Makes use of these projects:
[Chocolatey](http://chocolatey.org)
[Boxstarter](http://boxstarter.org)
[Homebrew](http://brew.sh)
[Homebrew Cask](http://caskroom.io)
