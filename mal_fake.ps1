Write-Host "=== Malware Simulation Started ===" -ForegroundColor Red
Write-Host "Connecting to C&C server..." -ForegroundColor Yellow
Start-Sleep -Seconds 1
Write-Host "Downloading additional payload..." -ForegroundColor Yellow  
Start-Sleep -Seconds 1
Write-Host "Executing malicious code..." -ForegroundColor Red
Start-Sleep -Seconds 1

# 임시 파일에 "HACKED" 메시지 작성
$hackMessage = @"
======================
    SYSTEM HACKED!
======================

Your system has been compromised!
This is a security demonstration.

Time: $(Get-Date)
Computer: $env:COMPUTERNAME
User: $env:USERNAME

======================
Educational Purpose Only
======================
"@

$tempFile = "$env:TEMP\hacked.txt"
$hackMessage | Out-File -FilePath $tempFile -Encoding UTF8

# 메모장으로 파일 열기
Start-Process notepad.exe -ArgumentList $tempFile

Write-Host "System compromised! Hacked message displayed." -ForegroundColor Green
Write-Host "=== Attack Simulation Complete ===" -ForegroundColor Red
