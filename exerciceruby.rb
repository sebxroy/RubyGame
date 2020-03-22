#!/usr/bin/env ruby

def guessNbGame()


    secretNb = 0
    nbOfTries = -1
    guessNb = -1
    timeOut = false
    triesCount = 0
    maxTries = -1

        
    puts "********* Levels             Range          Tries *****"

    puts "          1- Very Easy       1 to 10        Unlimited"
    puts "          2- Easy            1 to 10        5"
    puts "          3- Medium          1 to 100       6"
    puts "          4- Difficult       1 to 500       8"
    puts "          5- Very Difficult  1 to 1000      9"

    puts " "
    puts "Choose your desired difficulty between 1 to 5"
    puts " "
    level = gets.to_i


    if level == 1

        puts "You chose Very Easy lol"
        secretNb = rand(9) + 1
        maxTries = 9999

    elsif level == 2

        puts "You chose Easy, sight"
        secretNb = rand(9) + 1
        maxTries = 5

    elsif level == 3

        puts "You chose Medium"
        secretNb = rand(99) + 1
        maxTries = 6

    elsif level == 4

        puts "You chose Difficult, not bad"
        secretNb = rand(499) + 1
        maxTries = 8

    elsif level == 5
        
        puts "You chose Very difficult, good luck."
        secretNb = rand (999) + 1
        maxTries = 9

    end
    
    puts " "
    puts "Let's start in 3, 2, 1..."
    puts " "
    puts "Guess the number"

    while guessNb != secretNb or !timeOut do
        
        if triesCount < maxTries
            guessNb = gets.to_i

            if guessNb < secretNb
                puts "The sercret number is higher"
            elsif guessNb > secretNb
                puts "The secret number is lower" 
            else
                puts "You win this one!"
                timeOut = true     
            end
        else
            timeOut = true
            guessNb = secretNb
            puts "You reached the maximum number of tries, shame!!"
            puts ""
            puts "The secret number was  #{secretNb}"
        end
        
        triesCount = triesCount + 1
    end




end 

puts "0123456789876543212345678987654321234567898765432123456789876543212345678987654321234567891"
puts "0                                                                                         1"
puts "0                                                                                         1"
puts "0                  W 3 1_ C 0 M 3   T 0    T H 3    N 1 G H T M A R 3                     1"
puts "0                                                                                         1"
puts "0                                                                                         1"
puts "0123456789876543212345678987654321234567898765432123456789876543212345678987654321234567891"
puts " "
puts " "
puts "*Jigsaw voice* 'I want to play a gameee', Do you? y or n"
answer = gets.to_s

if answer == "n"
    exit 
end

puts " "
print "Now enter your name: "
name = gets.to_s

puts " "
puts "Hello  #{name} "

guessNbGame()

puts " "
puts "Do you want to play again? y or n"

answerEnd = gets.chomp

while answerEnd == "y" do 
    guessNbGame()
    puts " "
    puts "Do you want to play again? y or n"

    answerEnd = gets.chomp
end 

    exit



