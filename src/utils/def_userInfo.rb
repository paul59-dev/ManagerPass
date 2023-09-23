require_relative "./animations/def_blink"

def userInfo (message)
    puts message
    blink("-> ", 5, 0.5)  # Fait clignoter "->" 5 fois avec un intervalle de 0,5 seconde
    input = gets.chomp
    input = input.rstrip
    puts ""
    return input
end