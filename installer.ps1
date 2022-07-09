#region Configuration
$ProgressPreference = 'Continue'
New-Item -ItemType Directory -Path $PSScriptRoot/office
New-Item -ItemType Directory -Path $PSScriptRoot/software
#endregion

#region Sophia Script
powershell.exe -Wait .\Sophia\Sophia.ps1
#endregion

#region Open Git of Sunvalley-srw
Start-Process "https://github.com/mrkenhoo/sunvalley-srw/releases"
#endregion

#region Date and Time preferences
Set-ItemProperty "HKCU:\HKEY_CURRENT_USER\Control Panel\International\" -Name "iFirstDayOfWeek" -Value "0"
Set-ItemProperty "HKCU:\HKEY_CURRENT_USER\Control Panel\International\" -Name "sShortDate" -Value "d/MM/yyyy"
Set-ItemProperty "HKCU:\HKEY_CURRENT_USER\Control Panel\International\" -Name "sShortTime" -Value " h:mm tt"
#endregion

#region Disable alt+tab With Edge Tabs
Set-Itemproperty "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "MultiTaskingAltTabFilter" -Value 3
#enregion

#region Disable Snap Layouts in Taskbar
Set-Itemproperty "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "EnableSnapAssistFlyout" -Value 0
#endregion

#region Set Taskbar to Auto-hide
$path = "HKCU:SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\StuckRects3"
$value = (Get-ItemProperty -Path $path).Settings
$value[8] = 03
Set-ItemProperty -Path $path -Name Settings -Value $value
Stop-Process -f -ProcessName explorer
#endregion

#region Install Office
$url = "https://download.microsoft.com/download/2/7/A/27AF1BE6-DD20-4CB4-B154-EBAB8A7D4A7E/officedeploymenttool_15225-20204.exe"
$output = "$PSScriptRoot/office/office-deployment-tool.exe"
$file = "$PSScriptRoot/office/"

Invoke-WebRequest -Uri $url -OutFile $output
Start-Process -Wait -FilePath "$PSScriptRoot/office/office-deployment-tool.exe" -ArgumentList "/extract:$file"
#endregion



# #PROGRAM LIST
# - Chrome 
# - Bitwarden
# - Whatsapp
# - Spotify
# - Office deployment tool
# - git
# - Klite codecs
# - ImageGLass 
# - windows terminal
# - icloud
# - notepad++
# - vscode
# - qbittorrent
# - speedcrunch
# - ueli
# - 7 zip 
# - powershell 7
