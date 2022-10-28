cd C:\
mkdir windows_evidence
cd C:\windows_evidence
wmic os get LocalDateTime >> 001_evidencetimecollection.txt
net user >> 002_users.txt
net localgroup administrators >> 003_localgroupadministrators.txt
net localgroup administradores >> 003_localgroupadministrators.txt
tasklist /svc >> 004_tasklist.txt
ipconfig /all >> 005_ipconfig.txt
C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe "Get-NetAdapter | Format-List -Property PromiscuousMode" >> 005_ipconfig.txt
dir C:\WINDOWS\system32 /o:d >> 006_filesystems.txt
net start >> 007_servicesrunning.txt
schtasks >> 008_scheduletasks.txt
C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe reg query  HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run >> 009_registrykeysoftware.txt
C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe reg query  HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Run >> 010_registrykeyuser.txt
netstat -ano >> 011_connections.txt
net view \\127.0.0.1 >> 012_filesharing.txt
netsh advfirewall show currentprofile >> 013_firewallcurrentprofile.txt
net sessions >> 014_opensessions.txt
