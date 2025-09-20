Write-Host "=== PowerShell Attack Simulation Started ===" -ForegroundColor Red
Write-Host "Bypassing execution policy..." -ForegroundColor Yellow
Start-Sleep -Seconds 1
Write-Host "Injecting malicious PowerShell payload..." -ForegroundColor Yellow  
Start-Sleep -Seconds 1
Write-Host "Collecting system information..." -ForegroundColor Yellow
Start-Sleep -Seconds 1
Write-Host "PowerShell command execution successful..." -ForegroundColor Red
Start-Sleep -Seconds 1

# 시스템 정보 수집
$netstatInfo = netstat -an | Select-Object -First 20
$processList = Get-Process | Select-Object Name, Id, CPU | Sort-Object CPU -Descending | Select-Object -First 15

# PowerShell 공격 성공 메시지
$hackMessage = @"
======================
  POWERSHELL COMPROMISED!
======================

Your system's PowerShell has been exploited!

Attack Vector: Remote Script Execution
Method: DownloadString + IEX
Status: EXECUTION SUCCESSFUL

======================
Target Information:
======================
Time: $(Get-Date)
Computer: $env:COMPUTERNAME
User: $env:USERNAME
PowerShell Version: $($PSVersionTable.PSVersion)

======================
NETWORK CONNECTIONS (netstat -an):
======================
$($netstatInfo -join "`n")

======================
RUNNING PROCESSES (Top 15 by CPU):
======================
$($processList | Format-Table -AutoSize | Out-String)

======================
This demonstrates how attackers use 
PowerShell for system reconnaissance.
Educational Purpose Only.
======================
"@

$tempFile = "$env:TEMP\powershell_recon.txt"
$hackMessage | Out-File -FilePath $tempFile -Encoding UTF8

# 메모장으로 파일 열기
Start-Process notepad.exe -ArgumentList $tempFile

Write-Host "System reconnaissance completed! Data collected via PowerShell." -ForegroundColor Green
Write-Host "=== PowerShell Attack Complete ===" -ForegroundColor Red
