# Step 1: Convert WEBM → MP3
$ffmpeg = "$env:USERPROFILE\Desktop\ffmpeg.exe"

Get-ChildItem -Filter *.webm | Sort-Object Name | ForEach-Object {
    $out = [System.IO.Path]::ChangeExtension($_.FullName, ".mp3")
    & $ffmpeg -i "$($_.FullName)" -q:a 0 -map a "$out"
}

# Step 2: Create concat list
Get-ChildItem -Filter *.mp3 | Sort-Object Name | ForEach-Object {
    "file '$($_.FullName)'"
} | Set-Content list.txt

# Step 3: Merge
& $ffmpeg -f concat -safe 0 -i list.txt -c copy output.mp3