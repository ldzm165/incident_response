cd /tmp/
mkdir evidence_folder
cat /etc/passwd >> 001_users.txt
find / -nouser -print >> 002_temp_users.txt
cat /etc/shadow >> 003_encryptpasswords.txt
cat /etc/group >> 004_groups.txt
cat /etc/sudoers >> 005_userprivilege.txt
lastlog >> 006_lastlogin.txt
uptime >> 007_uptime.txt
ps aux >> 008_process.txt
lsof -i >> 009_processlistening.txt
service --status-all >> 010_services.txt
netstat -punta >> 011_netstatus.txt
cp /var/log /tmp/evidence_folder
