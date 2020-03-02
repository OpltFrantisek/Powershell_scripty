# Porovna soubory ze slozky a se slozkou b a zmeny zkopiruje do slozky c
$source = Get-ChildItem -Recurse -path D:\Temp\a
$destination = Get-ChildItem -Recurse -path D:\Temp\b
$destinationCopy = "D:\Temp\c"
Compare-Object  $source $destination -Property LastWriteTime, FullName | Where-Object {$_.SideIndicator -eq "<="} |  ForEach-Object {
        Copy-Item "$($_.FullName)" -Destination $destinationCopy -Force
        }