require_relative "../../utils/def_menuInfo"
require_relative "../../utils/def_caseError"
require_relative "../../utils/def_clearConsole"
require_relative "../../def_menu"
require_relative "crud/def_createManager.rb"
require_relative "../../utils/animations/def_await"

def dashBoard

    clear_terminal()

    questions = [
        "Créer un gestionnaire.", # Avec mot de passe automanique ou non
        "Supprimer un gestionnaire.",
        "Voir les gestionnaires.",
        "Rechercher un gestionnaire.",
        "Se déconnecter"
    ]

    user_prompt = menuInfo(questions)

    case user_prompt
    when 1
        create_manager()
    when 2
    when 3
    when 4
    when 5
        puts "A bientôt #{$user_name} !"
        await()
        menu()
    else
        caseError(questions)
    end
end