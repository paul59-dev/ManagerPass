require_relative "../utils/def_extractFileUser"
require_relative "../utils/def_userInfo"
require_relative "../utils/def_menuInfo"
require_relative "../utils/def_caseError"
require_relative "../def_menu"
require_relative "dashboard/def_dashBoard"
require_relative "../utils/def_clearConsole"
require_relative "../utils/cryptography/def_decrypt"

def login 

    clear_terminal()

    userChoise = [
        "Connectez-vous à votre compte.",
        "Quitter."
    ]
    
    puts ""
    user_prompt = menuInfo(userChoise)

    clear_terminal()
    
    case user_prompt
    when 1
        puts ""
        $user_name = userInfo("Entrer votre nom d'utilisateur.")
        user_pass = userInfo("Entrer votre mot de passe.")
        file_content = File.binread($data_file)
        encrypted_pairs = file_content.split("\n")
        decrypted_pairs = encrypted_pairs.map { |pair| decrypt_pair(pair) }


        found_user = false

        decrypted_pairs.each do |pair|
            me, password = pair.split(": ")
            if $user_name == me && user_pass == password
                found_user = true
                # Code si le nom d'utilisateur et le mot de passe sont corrects
                dashBoard()
                break
            end
        end

        if !found_user
            puts "Votre nom d'utilisateur ou votre mot de passe n'est pas correct !"
            sleep(2)
        end
    when 2
        menu()
    else
        caseError(userChoise)
    end
end