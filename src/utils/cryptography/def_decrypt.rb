require "openssl"

# Méthode pour décrypter des données
def decrypt_pair(pair)
  decipher = OpenSSL::Cipher.new('AES-256-CBC')
  decipher.decrypt
  decipher.key = $decryption_key
  iv = pair[0, 16]
  decipher.iv = iv
  decrypted = decipher.update(pair[16..-1]) + decipher.final
  return decrypted
end