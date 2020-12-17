$Source="C:\Path\to\dungeoneer-pack\"
$Target="C:\Path\to\TacO\dungeoneer-pack.zip"

$7zipPath = "$env:ProgramFiles\7-Zip\7z.exe"

if (-not (Test-Path -Path $7zipPath -PathType Leaf)) {
    throw "7 zip file '$7zipPath' not found"
}

Set-Alias 7zip $7zipPath

7zip u $Target $Source*.xml $Source\Data