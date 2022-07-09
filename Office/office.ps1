New-Item -ItemType Directory -Path $PSScriptRoot/office -Force
$ProgressPreference = 'Continue'

$url = "https://download.microsoft.com/download/2/7/A/27AF1BE6-DD20-4CB4-B154-EBAB8A7D4A7E/officedeploymenttool_15225-20204.exe"
$output = "$PSScriptRoot/office/office-deployment-tool.exe"
$file = "$PSScriptRoot/office/"

Invoke-WebRequest -Uri $url -OutFile $output
Start-Process -Wait -FilePath "$PSScriptRoot/office/office-deployment-tool.exe" -ArgumentList "/extract:$file"
