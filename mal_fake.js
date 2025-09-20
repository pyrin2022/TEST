Write-Host "=== Malware Simulation Started ===" -ForegroundColor Red
Write-Host "Connecting to C&C server..." -ForegroundColor Yellow
Start-Sleep -Seconds 1
Write-Host "Downloading additional payload..." -ForegroundColor Yellow  
Start-Sleep -Seconds 1
Write-Host "Executing malicious code..." -ForegroundColor Red
Start-Sleep -Seconds 1
Start-Process calc.exe
Write-Host "System compromised! Calculator launched as proof." -ForegroundColor Green
Write-Host "=== Attack Simulation Complete ===" -ForegroundColor Red
