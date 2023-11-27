# Define variables
$gpg4winDownloadUrl = "https://files.gpg4win.org/gpg4win-latest.exe"
$gpg4winInstallerPath = "$env:USERPROFILE\Downloads\gpg4win-latest.exe"

# Download Gpg4win installer
Invoke-WebRequest -Uri $gpg4winDownloadUrl -OutFile $gpg4winInstallerPath

# Check if the installer exists
if (Test-Path $gpg4winInstallerPath) {
    # Run the Gpg4win installer
    $arguments = "/SILENT /COMPONENTS=gpgol,gpgex,gpa,winpt,gpges,gpgme,gnupg"
    Start-Process -FilePath $gpg4winInstallerPath -ArgumentList $arguments -Wait
    Write-Output "Gpg4win has been installed successfully."
} else {
    Write-Output "Failed to download the Gpg4win installer."
}
