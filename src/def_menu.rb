require_relative "connect/def_signIn"
require_relative "connect/def_logIn"
require_relative "utils/def_menuInfo"
require_relative "utils/def_clearConsole"
require_relative "utils/def_caseError"

def menu 

    clear_console()

    questions = [
        "Connection.",
        "Inscription.",
        "Quitter."
    ]

    user_prompt = menuInfo(questions)

    case user_prompt
    when 1
        login()
    when 2
        signin()
    when 3
        puts "A bientôt !"
        sleep(1)
        clear_console()
    else
        caseError(questions)
    end

end