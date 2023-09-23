require "openssl"

# Méthode pour crypter des données avec une clé de chiffrement
def encrypt(data)
    cipher = OpenSSL::Cipher.new('AES-256-CBC')
    cipher.encrypt
    cipher.key = $decryption_key
    iv = cipher.random_iv
    encrypted = cipher.update(data) + cipher.final
    return iv + encrypted
  end