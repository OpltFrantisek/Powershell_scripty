$fso = Get-ChildItem -Recurse -path D:\Temp\a
$fsoBU = Get-ChildItem -Recurse -path D:\Temp\b
Compare-Object  $fso $fsoBU -Property LastWriteTime, FullName | Where-Object {$_.SideIndicator -eq "<="}