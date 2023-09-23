require_relative "../utils/def_userInfo"
require_relative "../utils/def_menuInfo"
require_relative "../def_menu"
require_relative "../utils/def_caseError"
require_relative "../utils/cryptography/def_encrypt"
require_relative "../utils/def_clearConsole"
require_relative "../utils/def_clearConsoleWithText"

def signin

    clear_console()

    menuChoise = [
        "Créer un nouvelle utilisateur (Implique la remise à 0 de tout !)",
        "Retour"
    ]

    user_prompt = menuInfo(menuChoise)

    clear_terminal()
    
    case user_prompt
    when 1
        # Ouvre le fichier en mode écriture
        File.open($data_file, 'w') do |file|

            $user_name = userInfo("Quel est votre nom d'utilisateur ?")
            user_pass = userInfo("Quel est votre mot de passe ?")

            # Ecrire le contenu dans le fichier
            data_to_encrypt = "#{$user_name}: #{user_pass}"
            encrypted_data = encrypt(data_to_encrypt)
            file.puts(encrypted_data)
        end

        puts ""
        puts "Votre compte à bien été créer !"
        print "Merci de nous faire confiance "

        3.times do
            sleep(1)
            print "."
        end

        puts ""
        puts "Terminé !"

        sleep(1)

        menu()
    when 2
        menu()
    else 
        caseError(menuChoise)
    end

end