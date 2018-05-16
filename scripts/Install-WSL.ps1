# Enable Windows Subsystem for Linux
If ((Get-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux).State -eq "Disabled") {
  Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux
}

# Download Ubuntu archive
If (!(Test-Path -Path ~\Ubuntu.zip)) {
  Invoke-WebRequest -Uri https://aka.ms/wsl-ubuntu-1604 -OutFile ~/Ubuntu.zip -UseBasicParsing
}

# Extract Ubuntu archive
If (!(Test-Path -Path ~\Ubuntu)) {
  Expand-Archive ~\Ubuntu.zip ~\Ubuntu
}

# Install Ubuntu
Start-Process -FilePath ~\Ubuntu\ubuntu.exe -Wait

# Download dotfiles
Start-Process -FilePath wsl -ArgumentList 'git clone -b wsl https://github.com/richardlock/dotfiles.git ~/.dotfiles' -Wait

# Run configure script
Start-Process -FilePath wsl -ArgumentList 'bash ~/.dotfiles/scripts/configure.sh' -Wait
