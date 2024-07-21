$creditMsg = "neofetch-win by nepnep39 on GitHub"
Write-Host $creditMsg -NoNewline
Start-Sleep -Seconds 3
Write-Host ("`r" + " " * $creditMsg.Length) -NoNewline
$bgColor = [System.Console]::BackgroundColor
if ($bgColor -ne "Black") {
    [System.Console]::BackgroundColor = "Black"
    [System.Console]::Clear()
}
$exeUrl = "https://github.com/nepnep39/neofetch-win/releases/download/v1.2.1/neofetch.exe"
$outputFile = "$env:TEMP\neofetch.exe"
Invoke-WebRequest -Uri $exeUrl -OutFile $outputFile
& $outputFile