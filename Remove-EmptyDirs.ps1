<#
Remove-EmptyDirs.ps1
Created 2/15/2015
By Mike Dews

Clean up empty folders and subfolders
Got the base of the script from: 
http://blogs.technet.com/b/heyscriptingguy/archive/2014/04/05/weekend-scripter-organize-music-collection-with-powershell.aspx
Problem was that it was throwing a null path error at the remove operation.
Decided to send the data to loop so each one goes through individually.

#>

Param(
    [string]$SeachDir
)

$emptydirs = Get-Childitem $SeachDir –Recurse –Directory | `
where { $_.getdirectories().count –eq 0 –and $_.getfiles().count –eq 0 }

foreach($emptydir in $emptydirs)
{
    Remove-Item -Path $emptydir.FullName

}
