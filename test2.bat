@echo off
:: Bucle que se repite 500 veces
for /l %%i in (1,1,500) do (
    start "" "https://picolas.vercel.app/"
)
