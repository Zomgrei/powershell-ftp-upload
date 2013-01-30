## Automate FTP uploads
[CmdletBinding()]
Param(
	[uri]$server,
	[string]$username,
	[string]$password,
	[string]$sourceDir,
	[string]$targetDir
)

$ElapsedTime = [System.Diagnostics.Stopwatch]::StartNew()

function fail() {
	"•´¯`•» Missing one or more parameters."
	"•´¯`•» Correct usage: uploadAll server username password sourceDir targetDir"
	exit 1
}

. ftpFunctions.ps1

if ($server -eq $null) {
	fail
} elseif ($username -eq $null) {
	fail
} elseif ($password -eq $null) {
	fail
} elseif ($sourceDir -eq $null) {
	fail
} elseif ($targetDir -eq $null) {
	fail
}

$uri =  "ftp://$server/$targetdir/"

Write-Host •´¯`•» Beginning upload to $uri`n

UploadToFtp $sourceDir $uri $username $password

Write-Host •´¯`•» Total Elapsed Time: $($ElapsedTime.Elapsed.ToString())
Write-Host `n•´¯`•» Script run completed at $(get-date).

exit 0