$computerName = Read-Host "Enter the computer name"
$drivePath = Read-Host "Enter the drive path"
$driveLetter = Read-Host "Enter the drive letter"
$userName = Read-Host "Enter your username"
$password = Read-Host "Enter your password"

$driveLetter = $driveLetter.Replace(":", "")

$scriptBlock = {
    param($drivePath, $driveLetter, $userName, $password)
    net use "${driveLetter}:" $drivePath /user:$userName $password /persistent:yes
    Stop-Process -ProcessName explorer -Force
    Start-Process explorer
}

Invoke-Command -ComputerName $computerName -ScriptBlock $scriptBlock -ArgumentList $drivePath, $driveLetter, $userName, $password

