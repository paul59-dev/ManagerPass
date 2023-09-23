require_relative "../def_dashBoard"
require_relative "../../../utils/def_caseError"
require_relative "../../../utils/animations/def_await"

def create_manager 

    clear_terminal()

    userChoise = [
        "Créer un nouveau gestionnaire pour un mot de passe",
        "Quitter."
    ]

    user_prompt = menuInfo(userChoise)

    clear_terminal()

    case user_prompt
    when 1
        # Ouvre le fichier en mode écriture
        File.open($data_file_manager, 'w') do |file|

            user_dns = userInfo("Donnez le DNS (Nom De Domaine du Site Web).")
            user_pseudo = userInfo("Donnez le nom d'utilisateur pour vous connectez.")
            user_pass = userInfo("Donnez votre mot de passe.")

            # Ecrire le contenu dans le fichier
            data_to_encrypt = "#{$user_dsn}: #{user_pseudo}: #{user_pass}"
            encrypted_data = encrypt(data_to_encrypt)
            file.puts(encrypted_data)
        end

        puts ""
        puts "Votre gestionnaire à bien été créer !"
        await()
        dashBoard()
    when 2
        puts "Compris #{$user_name} !"
        await()
        dashBoard()
    else
        caseError(questions)
    end

end