$Source="F:\Users\joshu\OneDrive\Documents\GitHub\dungeoneer-pack\"
$Target="F:\Users\joshu\Software\GW2 TacO\POIs\dungeoneer-pack.zip"

$Exclude=@("tacofy.ps1", "tmp")

Get-ChildItem -Recurse $Source |
    where { $_.Name -notin $Exclude} |
        Compress-Archive -DestinationPath $Target -Force -CompressionLevel Optimal