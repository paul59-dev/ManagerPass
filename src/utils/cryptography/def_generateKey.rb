def generate_decryption_key(secret_key)
    Digest::SHA256.digest(secret_key)
end