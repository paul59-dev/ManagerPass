require_relative "./animations/def_blink"
require_relative "./def_clearConsole"

def menuInfo (questions) 
    questions.each_with_index do |question, index|
        puts "#{index + 1}. #{question}"
    end
    blink("-> ", 5, 0.5)
    input = gets.chomp.to_i
    return input
end