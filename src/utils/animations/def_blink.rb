def blink(text, times, interval)
    print "\e[5m#{text}\e[0m"  # Active le clignotement
    sleep(interval * times)   # Attend pendant la durée totale du clignotement
    print "\e[0m"            # Désactive le clignotement
end