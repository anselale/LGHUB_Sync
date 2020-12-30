@echo off

taskkill/F /IM lghub.exe
taskkill/F /IM lghub_agent.exe
timeout 1

cd C:\Users\%USERNAME%\Google Drive\LGHUB\Scripts
bash SyncDownload.bash %USERNAME%
timeout 1

start "" "C:\Program Files\LGHUB\lghub.exe" :0 -clipboard -multiwindow

