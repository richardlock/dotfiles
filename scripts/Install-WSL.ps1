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

# Initialise Ubuntu
Start-Process -FilePath ~\Ubuntu\ubuntu.exe -Wait

# Run configure script
Start-Process -FilePath wsl -ArgumentList 'sh -c "$(curl -fsSL https://raw.githubusercontent.com/richardlock/dotfiles/wsl/scripts/configure.sh)"' -Wait
