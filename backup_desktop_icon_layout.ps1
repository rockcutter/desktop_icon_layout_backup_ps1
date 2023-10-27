$RegistryPath = "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\Shell\Bags"

$CurrentDate = Get-Date -Format "yyyy_MM_dd_HH_mm_ss"

New-Item -ItemType Directory -Path "$PSScriptRoot\desktop_iconlayout_backup"

$OutputPath = "$PSScriptRoot\desktop_iconlayout_backup\$CurrentDate.reg"

regedit /e $OutputPath  $RegistryPath

PAUSE
