
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

# #PROGRAM LIST
# - Min
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
