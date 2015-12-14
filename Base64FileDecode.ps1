<#
simple script that will go line by line through a file that contains BASE64
encoded strings.  You should able to switch out the encoding to whatever is supported
in Windows and .NET
#>
param (
    [string]$TargetFile
)

$OutputFile = $TargetFile+'Decoded'

$data = Get-Content $TargetFile
foreach($line in $Data)
{
[System.Text.Encoding]::ASCII.GetString([System.Convert]::FromBase64String($Line)) |
    Out-File -Encoding "ASCII" $OutputFile -Append
}
