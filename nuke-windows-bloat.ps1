# This script is designed to remove unnecessary or bloatware AppxPackages from Windows.
# Usage: Run this script in PowerShell with administrator privileges.
# Prerequisites: Ensure you have administrative rights to execute this script.

# Check if the script is running with elevated privileges
if (-not ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) {
    Write-Host "This script must be run as an administrator." -ForegroundColor Red
    exit
}

# Determine and print the Windows version
$windowsVersion = (Get-ItemProperty "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion").ProductName
Write-Host "[INFO] Windows Version: $windowsVersion"

# Define a list of AppxPackages to remove
# These packages are considered unnecessary or bloatware for many users,
# and their removal can help streamline the system and free up resources.
$appxPackages = @(
    "*Microsoft.YourPhone*",
    "*Microsoft.Getstarted*",
    "*Microsoft.GetHelp*",
    "*Microsoft.XboxGamingOverlay*"
)

# Loop through each package and attempt to remove it
foreach ($package in $appxPackages) {
    try {
        # Get the package
        $appxPackage = Get-AppxPackage | Where-Object { $_.Name -like $package }
        if ($appxPackage) {
            # Remove the package
        Write-Host "Error removing package: $package. Exception: $($_.Exception.Message)"
            Write-Host "Successfully removed: $package"
        } else {
            Write-Host "Package not found: $package"
        }
    } catch {
        Write-Host "Error removing package: $package. Error: $_"
    }
}