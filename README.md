# Drive Mapping Scripts

### These are a couple PowerShell scripts that took me 30 minutes to write to save me 30 seconds when mapping drives for users, hope it helps somebody.

This repository contains two PowerShell scripts to facilitate the mapping of network drives, either on a local system or remotely on another computer.

## Scripts

### 1. map-remote

This script is used to map a network drive on a remote computer.

#### Usage

1. Open PowerShell as an Administrator.
2. Navigate to the directory containing the script.
3. Run the script using the command: `.\map-remote.ps1`
4. Follow the prompts to enter:
   - The remote computer's name
   - The drive path you wish to map
   - The drive letter you want to use
   - Your username
   - Your password

The script will map the drive and refresh the explorer process on the remote computer.

### 2. map-local

This script maps a network drive on the local machine.

#### Usage

1. Open PowerShell as an Administrator.
2. Navigate to the directory containing the script.
3. Run the script using the command: `.\maplocal.ps1`
4. Follow the prompts to enter:
   - The drive letter you want to use (ensure it's a single character)
   - The folder path (UNC path, e.g., `\\ServerName\SharedFolder`)

The script checks the validity of the drive letter, maps the drive, and provides feedback on whether the mapping was successful.

## Requirements

- PowerShell 5.1 or higher
- Administrative privileges on the computer where the scripts are run

Ensure you have the necessary permissions to map network drives on the machines involved.
