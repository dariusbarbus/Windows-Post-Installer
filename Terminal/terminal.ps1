#region Protocols
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
$ProgressPreference = 'Continue'
#endregion

#region Install fonts
$path = "C:\setup\fonts"
New-Item -ItemType Directory -Path $path
#endregion

$source = "https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Hack.zip"
$output = "C:\setup\fonts\Hack.zip"

Invoke-WebRequest -Uri $source -OutFile $output -Method Get
Expand-Archive -Path $output -DestinationPath $path -Force

Copy-Item -Path "C:\setup\fonts\*.tff" -Destination  "C:\Windows\Fonts"
#endregion

#region Install Oh-My-Posh
winget install oh-my-posh
#endregion

#region JSON FILE
Copy-Item -Path "C:\setup\script\settings.json" -Destination "~\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json"
#endregion

#region Save Microsoft.Powershell_Profile.ps1 in echo $PROFILE