$User = $env:USERNAME
$IP = (Get-NetIPAddress -AddressFamily IPv4 -InterfaceAlias 'Ethernet*','Wi-Fi*' -ErrorAction SilentlyContinue | Where-Object {$_.IPAddress -ne "127.0.0.1"} | Select-Object -First 1).IPAddress
$Time = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
$Log = "User: $User`nIP: $IP`nTime: $Time"

$Path = "C:\Temp\log.txt"
New-Item -Path "C:\Temp" -ItemType Directory -Force | Out-Null
$Log | Out-File -FilePath $Path -Encoding UTF8
