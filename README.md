1. Sophia script
2. Install [Sunvalley](https://github.com/mrkenhoo/sunvalley-srw) and remove all UWP APPS
3. Restore the store and terminal
    -  Get-AppXPackage WindowsStore -AllUsers  Foreach {Add-AppxPackage -DisableDevelopmentMode -Register “$($_.InstallLocation)AppXManifest.xml”}
    - Get-AppXPackage WindowsTerminal -AllUsers  Foreach {Add-AppxPackage -DisableDevelopmentMode -Register “$($_.InstallLocation)AppXManifest.xml”}
4. Install Terminal using instructions
5. Install Office
6. Run installer.ps1