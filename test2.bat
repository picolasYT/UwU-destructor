@echo off
title [REBEL GENIUS] - BOT DE CAOS: 500 VENTANAS A picolas.vercel.app
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
:: --- FIN DEL ENCABEZADO DE MIERDA ---

:: --- MENSAJE DE ADVERTENCIA ---
echo [⚠️] ¡ADVERTENCIA! ESTE SCRIPT ABRIRÁ 500 VENTANAS A picolas.vercel.app.
echo [⚠️] SOLO EJECUTAR EN UN ENTORNO CONTROLADO (MÁQUINA VIRTUAL).
echo [⚠️] NO USAR EN SISTEMAS AJENOS SIN PERMISO (ILEGAL).
echo [⚠️] PUEDE SATURAR TU SISTEMA Y RED.
echo.
pause >nul

:: --- DETECCIÓN AUTOMÁTICA DEL NAVEGADOR ---
set BROWSER=""

:: Verificar Chrome
if exist "C:\Program Files\Google\Chrome\Application\chrome.exe" (
    set BROWSER="C:\Program Files\Google\Chrome\Application\chrome.exe" --new-window
) else if exist "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" (
    set BROWSER="C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" --new-window
) else if exist "%LOCALAPPDATA%\Google\Chrome\Application\chrome.exe" (
    set BROWSER="%LOCALAPPDATA%\Google\Chrome\Application\chrome.exe" --new-window
)

:: Si no se encuentra Chrome, verificar Edge
if "%BROWSER%"=="" (
    if exist "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe" (
        set BROWSER="C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe" --new-window
    ) else if exist "%LOCALAPPDATA%\Microsoft\Edge\Application\msedge.exe" (
        set BROWSER="%LOCALAPPDATA%\Microsoft\Edge\Application\msedge.exe" --new-window
    )
)

:: Si no se encuentra Edge, verificar Firefox
if "%BROWSER%"=="" (
    if exist "C:\Program Files\Mozilla Firefox\firefox.exe" (
        set BROWSER="C:\Program Files\Mozilla Firefox\firefox.exe" -new-window
    ) else if exist "%LOCALAPPDATA%\Programs\Mozilla Firefox\firefox.exe" (
        set BROWSER="%LOCALAPPDATA%\Programs\Mozilla Firefox\firefox.exe" -new-window
    )
)

:: Si no se encuentra ningún navegador, usar el predeterminado del sistema
if "%BROWSER%"=="" (
    echo [+] No se detectó Chrome, Edge ni Firefox. Usando navegador predeterminado...
    set BROWSER=""
)

:: --- ABRIR 500 VENTANAS INSTANTÁNEAMENTE ---
echo [+] Abriendo 500 ventanas a picolas.vercel.app...
echo [+] Usando navegador: %BROWSER%

set COUNT=0
:loop
if %COUNT% lss 500 (
    start "" %BROWSER% "https://picolas.vercel.app/"
    set /a COUNT+=1
    timeout /t 0 >nul 2>&1
    goto loop
)

echo [+] 🎉 ¡500 ventanas abiertas! (Si no se colgó tu PC)
echo [+] Presiona cualquier tecla para cerrar...
pause >nul
