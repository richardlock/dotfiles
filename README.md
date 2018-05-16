# richardlock does dotfiles
Based on:
https://github.com/jldeen/dotfiles/tree/wsl
https://github.com/anishathalye/dotfiles

### WSL installation
Run the following from an administrative PowerShell prompt to install and configure Ubuntu on WSL.
A reboot is required to enable WSL, and then the script should be run again.
```
Set-ExecutionPolicy Bypass -Scope Process -Force; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/richardlock/dotfiles/wsl/scripts/Install-WSL.ps1'))
```

### Dotfiles installation
Run the following to install and configure dotfiles only...
```
git clone -b wsl https://github.com/richardlock/dotfiles.git ~/.dotfiles
~/.dotfiles/install
```
