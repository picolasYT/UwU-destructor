@echo off
:: Cambia "chrome.exe" por "msedge.exe" o "brave.exe" si usas otro navegador
set "navegador=chrome.exe"
set "url=https://picolas.vercel.app/"

echo Iniciando la apertura de 500 ventanas...
echo Presiona Ctrl+C en esta consola si deseas detener el proceso.
echo -----------------------------------------------------------

for /l %%i in (1,1,500) do (
    echo Abriendo ventana %%i de 500...
    start %navegador% --new-window "%url%"
    
    :: Pausa de 3 segundos para permitir que la página cargue al 100%
    :: Puedes cambiar el 3 por el número de segundos que consideres necesario
    timeout /t 3 /nobreak >nul
)

echo Proceso finalizado.
pause
