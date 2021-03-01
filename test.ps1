param (
    [Parameter(Mandatory=$False)]
    [string]$cwd = ""
)

$scriptName = ($MyInvocation.MyCommand.Name.Replace(".ps1",""))
Write-Host "scriptName:$scriptName"
$scriptPath = $MyInvocation.MyCommand.Path
Write-Host "scriptPath:$scriptPath"
$cwd = $MyInvocation.MyCommand.Path | Split-Path
Write-Host "cwd:$cwd"


$scriptPath = $MyInvocation.MyCommand.Definition
Write-Output "scriptPath:$scriptPath"

$scriptFolder = Split-Path -Parent $scriptPath
Write-Output "scriptFolder:$scriptFolder"