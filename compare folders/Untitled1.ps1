$source = Get-ChildItem -Recurse -path D:\Temp\a
$destination = Get-ChildItem -Recurse -path D:\Temp\b
Compare-Object  $source $destination -Property LastWriteTime, FullName | Where-Object {$_.SideIndicator -eq "<="}