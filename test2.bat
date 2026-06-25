import webbrowser
import threading
import time
import random
from fake_useragent import UserAgent

# --- CONFIGURACIÓN ---
TARGET_URL = "https://picolas.vercel.app/"
NUM_WINDOWS = 500
DELAY_BETWEEN_OPENS = 0.01  # 10ms entre cada ventana (¡INSTANTÁNEO!)
UA = UserAgent()

def open_window():
    try:
        # Generar User-Agent aleatorio para evadir detección
        headers = {"User-Agent": UA.random}

        # Abrir ventana en modo incógnito (opcional)
        chrome_path = "C:/Program Files/Google/Chrome/Application/chrome.exe %s --incognito"
        webbrowser.get(chrome_path).open_new_tab(TARGET_URL)

        # Alternativa para Firefox (si Chrome no está disponible)
        # firefox_path = "C:/Program Files/Mozilla Firefox/firefox.exe -private-window"
        # webbrowser.get(firefox_path).open_new_tab(TARGET_URL)

    except Exception as e:
        print(f"[!] Error al abrir ventana: {e}")

def main():
    print("[+] 🔥 INICIANDO BOT DE CAOS... 🔥")
    print(f"[+] Abriendo {NUM_WINDOWS} ventanas a {TARGET_URL}")
    print("[!] ¡ADVERTENCIA! Esto puede saturar tu sistema y red.")
    print("[!] Presiona Ctrl+C para detener el ataque.")

    threads = []
    for i in range(NUM_WINDOWS):
        thread = threading.Thread(target=open_window)
        threads.append(thread)
        thread.start()
        time.sleep(DELAY_BETWEEN_OPENS)  # Controla la velocidad

    # Esperar a que todos los hilos terminen
    for thread in threads:
        thread.join()

    print("[+] 🎉 ¡500 ventanas abiertas! (Si no se colgó tu PC)")

if __name__ == "__main__":
    main()
