require 'securerandom'

require_relative "src/def_menu"
require_relative "src/utils/def_clearConsole"
require_relative "src/utils/cryptography/def_generateKey"

$data_file = "./src/connect/connection_file.txt"
$data_file_manager = "./src/connect/dashboard/data_file_manager.txt"
$user_name = ""

if File.exist?("encryption_key.txt")
    $decryption_key = File.binread("encryption_key.txt").freeze
  else
    $decryption_key = SecureRandom.bytes(32)
    File.open("encryption_key.txt", "wb") do |file|
      file.write($decryption_key)
    end
  end
  

begin
    menu()
rescue Interrupt
    puts ""
    puts "A bientôt"
    sleep(1)
    clear_console()
    exit
end