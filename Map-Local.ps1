$driveLetter = Read-Host -Prompt "Drive Letter (e.g., Z)"
$sharedPath = Read-Host -Prompt "Folder Path (UNC path e.g., \\ServerName\SharedFolder)"

$driveLetter = $driveLetter.Trim().Replace(":", "")

if (-not $driveLetter -or $driveLetter.Length -ne 1) {
    Write-Host "Invalid drive letter. Please provide a single character for the drive letter."
    exit
}

$command = "net use ${driveLetter}: $sharedPath /persistent:yes"
try {
    Invoke-Expression -Command $command
    if ($LASTEXITCODE -eq 0) {
        Write-Host "Drive ${driveLetter}: mapped successfully to $sharedPath"
    } else {
        Write-Host "Failed to map drive with error code $LASTEXITCODE"
    }
} catch {
    Write-Host "Failed to map drive. Exception: $_"
}
