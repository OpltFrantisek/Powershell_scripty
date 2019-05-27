#provede ping na všechny ip adresy v seznamu a vypíše výsledek
function Get-ScriptDirectory { Split-Path $MyInvocation.ScriptName }

# generate the path to the script in the utils directory:
$script = Join-Path (Get-ScriptDirectory) 'ip_list.txt'
$IPNodes = Get-Content $script

foreach ($IP in $IPNodes)
{
if (Test-Connection -IPAddress $IP -Count 1 -ErrorAction SilentlyContinue)
{
Write-Host "$IP is UP" -ForegroundColor Green;
}
Else
{
Write-Host "$IP is Down" -ForegroundColor Red;
}

}