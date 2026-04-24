# webm2mp3
Simple tool to convert any webm videos into mp3s. I have lots of educational videos I like to combine into a few hours long mp3 and listen to in the car. Hope you enjoy!


The webm-to-mp3.ps1 is a powershell script which will read all files in its current directory and look for any ending in .webm, it will use the ffmpeg tool to then convert them into mp3s. If you name the files in alphabetical order you can determine the order they are combined into the mp3. 

The speedup.ps1 is to manually change the playback speed, say you want to listen to the mp3 on Apple Music which won't let you set a higher speed. 

How To:

1. Create a folder on your desktop named mp3. Go to https://ffmpeg.org/ and download a windows build release https://github.com/BtbN/FFmpeg-Builds/releases. After downloading, unzip the archive and move the ffmpeg.exe file to your desktop.

2. Move all desired webm files you want to combine into the mp3 folder.
   
3. Right click the webm-to-mp3.ps1 and select run with powershell. It will output mp3s for each webm, along with a combined mp3 named output.mp3. It will also generate a list.txt log file.

Super simple!
