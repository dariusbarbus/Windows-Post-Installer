#region Protocols
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
$ProgressPreference = 'Continue'
#endregion

#region Date and Time preferences
Set-ItemProperty "HKCU:\HKEY_CURRENT_USER\Control Panel\International\" -Name "iFirstDayOfWeek" -Value "0"
Set-ItemProperty "HKCU:\HKEY_CURRENT_USER\Control Panel\International\" -Name "sShortDate" -Value "d/MM/yyyy"
Set-ItemProperty "HKCU:\HKEY_CURRENT_USER\Control Panel\International\" -Name "sShortTime" -Value " h:mm tt"
#endregion

#region Variables First Script
$source1 = "https://github.com/dariusbarbus/FORK-OF-Sophia-Script-for-Windows/archive/refs/heads/master.zip"
$output1 = "C:\setup\script\dbsophia.zip"
#endregion

#region Variables Second Script
$source2 = "https://github.com/mrkenhoo/sunvalley-srw/releases/download/0.0.12.5/sunvalley-srw-setup.exe"
$output2 = "C:\setup\script\sunvalley-srw.exe"
#endregion

#region New directory
$path = "C:\setup\script"
New-Item -ItemType Directory -Path $path
#endregion

#region Scripts Download
Write-Host "Downloading Scripts"
Invoke-WebRequest -Uri $source1 -OutFile $output1 -Method Get
Expand-Archive -Path $output1 -DestinationPath $path -Force
Invoke-WebRequest -Uri $source2 -OutFile $output2
#endregion

Invoke-WebRequest -Uri $source2 -OutFile $output2

#region Run First Script
Invoke-Expression "&'C:\setup\script\FORK-OF-Sophia-Script-for-Windows-master\Sophia Script\Sophia Script for Windows 11\Sophia.ps1'"
#endregion

#RESTORE WINDOWS STORE
#Get-AppXPackage WindowsStore -AllUsers  Foreach {Add-AppxPackage -DisableDevelopmentMode -Register “$($_.InstallLocation)AppXManifest.xml”}
#Get-AppXPackage WindowsTerminal -AllUsers  Foreach {Add-AppxPackage -DisableDevelopmentMode -Register “$($_.InstallLocation)AppXManifest.xml”}

#PROGRAM LIST
- Firefox
- Chrome 
- Bitwarden
- Whatsapp
- Spotify
- Office deployment tool
- git
- Klite codecs
- ImageGLass 
- windows terminal
- icloud
- notepad++
- vscode
- qbittorrent
- speedcrunch
- ueli
- 7 zip 
- powershell 7
