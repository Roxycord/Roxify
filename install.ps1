$link = "https://github.com/Roxycord/Roxify/releases/latest/download/RoxifyCli.exe"

$outfile = "$env:TEMP\RoxifyCli.exe"

Write-Output "Downloading installer to $outfile"

Invoke-WebRequest -Uri "$link" -OutFile "$outfile"

Write-Output ""

Start-Process -Wait -NoNewWindow -FilePath "$outfile"

# Cleanup
Remove-Item -Force "$outfile"
