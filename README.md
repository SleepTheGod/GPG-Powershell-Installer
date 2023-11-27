# GPG-Powershell-Installer
This script downloads the Gpg4win installer from the provided URL to the user's Downloads directory and then executes it silently with specific components selected for installation (gpgol, gpgex, gpa, winpt, gpges, gpgme, gnupg). Adjust the $gpg4winDownloadUrl variable with the actual download URL of the Gpg4win installer.

Please note: Ensure the installer supports the /SILENT switch and the specified components for silent installation. The listed components in the $arguments variable might need adjustments based on the specific Gpg4win version and your preferences for installation components. Always verify the source of the installer before running it.
