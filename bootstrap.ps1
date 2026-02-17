Write-Host "== Mousticke Dev Platform :: Windows bootstrap =="

# WSL2 + Ubuntu
wsl --install -d Ubuntu
wsl --set-default-version 2

# Windows Terminal
winget install --id Microsoft.WindowsTerminal -e

# JetBrains Mono font
$fontUrl = "https://download.jetbrains.com/fonts/JetBrainsMono-2.242.zip"
$zipPath = "$env:TEMP\JetBrainsMono.zip"
$fontPath = "$env:LOCALAPPDATA\Microsoft\Windows\Fonts"

Invoke-WebRequest $fontUrl -OutFile $zipPath
Expand-Archive $zipPath $fontPath -Force

Write-Host "JetBrains Mono installed."
Write-Host "Reboot, then launch Ubuntu and run bootstrap.sh"
