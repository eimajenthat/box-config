Set-ExplorerOptions -showHiddenFilesFoldersDrives -showProtectedOSFiles -showFileExtensions
Enable-RemoteDesktop
Install-WindowsUpdate -AcceptEula
Update-ExecutionPolicy Unrestricted
Enable-MicrosoftUpdate
Disable-BingSearch
Set-WindowsExplorerOptions -EnableShowHiddenFilesFoldersDrives -EnableShowProtectedOSFiles -EnableShowFileExtensions -EnableShowFullPathInTitleBar -EnableOpenFileExplorerToQuickAccess -EnableShowRecentFilesInQuickAccess -EnableShowFrequentFoldersInQuickAccess -EnableExpandToOpenFolder
Set-TaskbarOptions -Size Small -Lock -Dock Bottom -Combine Always
Disable-GameBarTips
Disable-InternetExplorerESC

# Install Chocolatey packages from choco.list
Get-Content ..\packages\choco.list | Foreach-Object {cinst $_}

# Some other packages we might want to install with Chocolatey
#keepass-keepasshttp OR keepass-plugin-keepasshttp
#mobaxterm OR mremoteng OR ultraVNC OR tightvnc
#pdfxchangeviewer OR pdfsam.install OR pdfcreator
#cyberduck OR filezilla OR winscp
#skype
#keepass-keeagent OR keepass-plugin-keeagent
#kpcli
#keepass-plugin-favicon
#conemu
#dropbox
#paint.net
#malwarebytes
#wget
#cdburnerxp OR imgburn
#winmerge
#googledrive
#audacity
#pip
#putty
#virtualclonedrive
#docker
#cpu-z
#grepwin
#pandoc
#greenshot

# Some things we want that Choco lacks
#odrive
#homestead
# Maybe: http://sunauskas.com/blog/install-msi-silently-with-powershell/

# Install babun packages
# http://stackoverflow.com/questions/22959618/how-to-run-cygwin-script-in-powershell
Get-Content ..\packages\choco.list | Foreach-Object {& C:\cygwin\bin\bash.exe "pact install $_"}

# Update and run Windows Defender: https://technet.microsoft.com/en-us/library/dn433280.aspx
# Set default browser: http://stackoverflow.com/questions/17536405/cant-set-chrome-as-default-browser-from-powershell
# make sure apm is in cygwin path, or else run the apm stuff here
# some variation of: http://stackoverflow.com/questions/22390709/open-atom-editor-from-command-line
# configure windows path
# configure cygwin path?
# Configure cygwin to make Windows symlinks: http://stackoverflow.com/questions/18654162/enable-native-ntfs-symbolic-links-for-cygwin/18659632#18659632
# Put this somewhere: CYGWIN=winsymlinks:native

# Download and run common.sh
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/eimajenthat/box-setup/install/common.sh" -OutFile "C:\temp\common.sh"
# http://stackoverflow.com/questions/22959618/how-to-run-cygwin-script-in-powershell
& C:\cygwin\bin\bash.exe /cygdrive/c/temp/common.sh

# Cleanup C:\temp at the end
