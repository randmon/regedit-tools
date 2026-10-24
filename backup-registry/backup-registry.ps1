$ErrorActionPreference = 'Stop'

$backupDirectory = Join-Path $PSScriptRoot 'backups'
$timestamp = Get-Date -Format 'yyyyMMdd-HHmmss'
$backupPath = Join-Path $backupDirectory "registry-backup-$timestamp.reg"
$regeditPath = Join-Path $env:WINDIR 'regedit.exe'

New-Item -ItemType Directory -Path $backupDirectory -Force | Out-Null
& $regeditPath /e $backupPath

if ($LASTEXITCODE -ne 0) {
    throw "Registry export failed with exit code $LASTEXITCODE."
}

if (-not (Test-Path -LiteralPath $backupPath) -or (Get-Item -LiteralPath $backupPath).Length -eq 0) {
    throw "Registry export did not create a non-empty backup file at '$backupPath'."
}

Write-Output "Registry backup created: $backupPath"
