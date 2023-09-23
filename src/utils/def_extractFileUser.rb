def extract_file_user (file_name)

    user_and_pass = {}  # Utilisation d'un dictionnaire (hashmap) pour stocker les paires nom d'utilisateur-mot de passe

    File.foreach(file_name) do |ligne|
        user_name, passw = ligne.chomp.split(': ')
        user_and_pass[user_name] = passw
    end

    return user_and_pass

end