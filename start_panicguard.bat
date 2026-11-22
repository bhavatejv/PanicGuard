@echo off
cd /d "%~dp0"

start "PanicGuard" cmd /k "cd /d ""%~dp0"" && call venv311\Scripts\activate && python main.py --mode simulate --panic-at 15 --duration 180"

:wait
timeout /t 1 /nobreak >nul
powershell -NoProfile -Command "try { $r=Test-NetConnection -ComputerName 127.0.0.1 -Port 8080 -WarningAction SilentlyContinue; if($r.TcpTestSucceeded){exit 0}else{exit 1} } catch { exit 1 }"
if errorlevel 1 goto wait

start "" "http://localhost:8080"
exit
