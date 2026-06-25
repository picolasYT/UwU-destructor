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

:: --- MÉTODO 1: USAR EL NAVEGADOR PREDETERMINADO DEL SISTEMA ---
echo [+] Usando método 1: Navegador predeterminado del sistema...
start "" "https://picolas.vercel.app/"

:: --- MÉTODO 2: FORZAR USO DE CHROME (SI ESTÁ INSTALADO) ---
echo [+] Usando método 2: Forzando Chrome (si está instalado)...
if exist "C:\Program Files\Google\Chrome\Application\chrome.exe" (
    start "" "C:\Program Files\Google\Chrome\Application\chrome.exe" "https://picolas.vercel.app/"
) else if exist "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" (
    start "" "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" "https://picolas.vercel.app/"
) else (
    echo [⚠️] Chrome no encontrado. Usando navegador predeterminado...
)

:: --- MÉTODO 3: USAR POWERSHELL PARA ABRIR VENTANAS (MÁS RÁPIDO) ---
echo [+] Usando método 3: Powershell para abrir ventanas (máximo rendimiento)...
set COUNT=0
:loop
if %COUNT% lss 500 (
    powershell -command "Start-Process 'https://picolas.vercel.app/'"
    set /a COUNT+=1
    timeout /t 0 >nul
    goto loop
)

echo [+] 🎉 ¡500 ventanas abiertas! (Si no se colgó tu PC)
echo [+] Presiona cualquier tecla para cerrar...
pause >nul
