$ffmpeg = "$env:USERPROFILE\Desktop\ffmpeg.exe"

# Get the only MP3 in the folder (whatever it's named)
$file = Get-ChildItem -Filter *.mp3 | Select-Object -First 1

if (-not $file) {
    Write-Host "No MP3 file found in this folder!"
    Read-Host "Press Enter to exit"
    exit
}

$output = [System.IO.Path]::ChangeExtension($file.FullName, "_1.6x.mp3")

Write-Host "Processing: $($file.Name)"
Write-Host "Output: $output"

& $ffmpeg -i "$($file.FullName)" -filter:a "atempo=1.6" -b:a 192k "$output"

Write-Host "Done!"
Read-Host "Press Enter to exit"