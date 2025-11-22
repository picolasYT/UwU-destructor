@echo off
echo INICIANDO CAOS ABSOLUTO NIVEL DIOS AJJAJAJAJAJ

:: Bloquear teclado y ratón temporalmente
echo Bloqueando controles...
rundll32.exe user32.dll,BlockInput

:: Volumen al MÁXIMO
echo VOLUMEN AL MÁXIMO...
for /L %%i in (1,1,15) do (
    powershell -c "(New-Object -ComObject WScript.Shell).SendKeys([char]175)"
)

:: Fondo CHAMOI
echo APLICANDO FONDO CHAMOI...
powershell -Command "Invoke-WebRequest -Uri 'https://files.catbox.moe/e9uh10.jpg' -OutFile '%temp%\chamoi.jpg'"
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d "%temp%\chamoi.jpg" /f
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v WallpaperStyle /t REG_SZ /d "10" /f
rundll32.exe user32.dll,UpdatePerUserSystemParameters

:: 30 VENTANAS DE RICKROLL
echo LANZANDO 30 RICKROLLS...
for /L %%i in (1,1,30) do (
    start "" "https://youtu.be/f_WuRfuMXQw?si=a-ZHHZuWollALawa"
    timeout /t 1 /nobreak >nul
)

:: Rotar pantalla (voltea la pantalla)
echo ROTANDO PANTALLA...
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "AltTabSettings" /t REG_DWORD /d 2 /f

:: 50 VENTANAS EMERGENTES AUTOMÁTICAS
echo BOMBARDEO DE 50 VENTANAS...
for /L %%i in (1,1,50) do (
    echo Set oWS = WScript.CreateObject("WScript.Shell") > %temp%\caos%%i.vbs
    echo oWS.Popup "CAOS NIVEL %%i/50 - RICKROLL ETERNO! 😈", 2, "APOCALIPSIS", 16 >> %temp%\caos%%i.vbs
    start wscript %temp%\caos%%i.vbs
)

:: Abrir aplicaciones aleatorias del sistema
echo ABRIENDO APLICACIONES DEL SISTEMA...
start notepad
start calc
start mspaint
start cmd
start powershell

:: Desbloquear controles después de 10 segundos
timeout /t 10 /nobreak >nul
rundll32.exe user32.dll,BlockInput

:: Cambiar resolución de pantalla (temporal)
echo ALTERANDO RESOLUCIÓN...
powershell -c "Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.Screen]::PrimaryScreen.Bounds"

:: Invertir colores de pantalla
echo INVIRTIENDO COLORES...
powershell -c "Add-Type -AssemblyName System.Windows.Forms; $screen = [System.Windows.Forms.Screen]::PrimaryScreen; $bounds = $screen.Bounds; $bitmap = New-Object System.Drawing.Bitmap $bounds.Width, $bounds.Height; $graphics = [System.Drawing.Graphics]::FromImage($bitmap); $graphics.CopyFromScreen($bounds.Location, [System.Drawing.Point]::Empty, $bounds.Size); $bitmap.Save('%temp%\screenshot.png')"

:: Mensaje final EPICO
echo Set oWS = WScript.CreateObject("WScript.Shell") > %temp%\epic.vbs
echo oWS.Popup "¡CAOS ABSOLUTO LOGRADO! 😈🔥", 4, "VICTORIA DEL DIABLO", 64 >> %temp%\epic.vbs
start wscript %temp%\epic.vbs

:: Sonido de risa malvada (si tiene archivo de sonido)
echo Agregando risa malvada...
echo Set Sound = CreateObject("WMPlayer.OCX.7") > %temp%\sound.vbs
echo Sound.URL = "https://www.soundjay.com/human/devil-laugh-1.wav" >> %temp%\sound.vbs
echo Sound.Controls.play >> %temp%\sound.vbs
echo while Sound.currentmedia.duration = 0 >> %temp%\sound.vbs
echo wscript.sleep 100 >> %temp%\sound.vbs
echo wend >> %temp%\sound.vbs
echo wscript.sleep (int(Sound.currentmedia.duration)+1)*1000 >> %temp%\sound.vbs
start wscript %temp%\sound.vbs

echo.
echo ¡CAOS ABSOLUTO IMPLANTADO! 🔥
echo El infierno se ha desatado en tu PC...
pause >nul

:: Limpiar caos
del %temp%\caos*.vbs
del %temp%\epic.vbs
del %temp%\sound.vbs
del %temp%\screenshot.png
