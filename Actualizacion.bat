@echo off
:bucle
timeout 10
git reset --hard
git pull | find /i "Already up to date."
if not errorlevel 1 (
   goto bucle
) else (
   echo si > "%cd%\actualizacion.txt"
   git show --name-only > "%cd%\info.txt"
   goto bucle
)
