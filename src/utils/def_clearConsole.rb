require 'io/console'

def clear_console
    if RUBY_PLATFORM =~ /win32|win64|mingw32|mingw64|cygwin/i
        system('cls')  # Pour Windows
    elsif RUBY_PLATFORM =~ /darwin|mac os/i
        system('clear')  # Pour macOS
    elsif RUBY_PLATFORM =~ /linux/i
        system('clear')  # Pour Linux
    else
        puts "Effacement du terminal non pris en charge pour ce système."
    end
end