#---------
# name: WordGuess.rb
#
#----------------

class Screen

 def cls
   puts ("\n" * 30)
   puts "\a"
 end

 def pause
    STDIN.gets
 end

end

class Game

	def display_greeting
		Console_Screen.cls
		print "\t\t\t\t\tWelcome to the Word Guessing Game!\n\n\n\n\n\n\n\n\n\nPress enter to continue."
		Console_Screen.pause

	end

	def display_instructions
		Console_Screen.cls
		puts "Instruction:\n\n"

		puts "At the start of each round of play, the game will randomly select a word that is between 5 and 10 characters long and challenge you to guess it. Press enter to continue."

		puts "Good Luck!\n\n\n\n\n"

		Console_Screen.pause

	end

	def select_word
		words = ["W I N D O W", "S T A T I O N", "H A M B U R G E R", "E X P R E S S I O N", "W A L L E T", "C A M E R A", "A I R P L A N E", "H A P P Y"]

		randomNo = rand(8)

		return words[randomNo]
	end

	def get_consonants
		list = Array.new

		puts "Before you try to guess the secret word , tou must specify 5 consosnants"
		print "Press enter to continue."
		Console_Screen.pause

		5.times do |variable|
			Console_Screen.cls

			print "\nPlease enter a conssonant and press enter: "

			input = STDIN.gets
			input.chop!

			if input !~ /[bcdfghjklmnpqrstvwxyz]/i then
				Console_Screen.cls
				print "Error: " + input + " is not a consonant. Press enter to continue "
				Console_Screen.pause

				redo

			end

			if input.length > 1 then
				Console_Screen.cls
				print "Error: You may only enter one character at one time. Press Enter to continue."
				Console_Screen.pause

				redo # repeat the current execution of the loop
			end

			if list.include?(input.upcase) == true then
				Console_Screen.cls
				print "Error: You have already guessed " + input + " . Press enter to contunue."

				Console_Screen.cls

				redo

			else

				list.push(input.upcase)
			end

			
		end


		return list

	end


	def get_vowel

		puts "Before you try to guess the second word, you must specify 1 vowel.\n\n\n"

		print "Press enter to continue."

		Console_Screen.pause

		1. times do

			Console_Screen.cls

			print "\nPlease enter a vowel and press enter: "

			input = STDIN.gets
			input.chop!

			if input !~ /[aeiou]/i then
				Console_Screen.cls

				print "Error: " + input + " is not a vowel. Press Enter to continue."

				Console_Screen.pause

				redo
			end

			if input.length > 1 then
				Console_Screen.cls

				print "Error: You may only one character at one time. Press enter to continue"

				Console_Screen.pause

				redo

			end

			input = input.upcase
			return input

		end

	end


	def prompt_for_gues(shortWord, word, consonants, vowel)

		Console_Screen.cls

		consonants.push(vowel)

		wordArray = word.split(" ")

		i = 0


		wordArray.each do |letter|

			match = false

			consonants.each do |character|

				if character == letter then

					match = true
					break
				end

			end


			if match == false then
				wordArray[i] = "_"
			end

			match = false

			i = i + 1

		end


		word = wordArray.join(" ")


		3.times do |i|

			Console_Screen.cls

			puts "I am thinking of a word.\n\n\n\n"
			print "Here is your clue: " + word + "\n\n\n\n\n\n"
			print "What do you think this word is? "

			reply = STDIN.gets

			reply.chop!

			reply = reply.upcase


			if reply == shortWord then

				Console_Screen.cls

				print "Correct! Press enter to continue."

				Console_Screen.pause

				break

			else

				Console_Screen.cls

				if i == 1 then
					print "Wrong! You have one guess left. Press enter to try again."

				elsif i == 2
					print "Sorry, you lose.\n\n"
					print "The word was " + shortWord + ". Press enter to continue."
				else
					print "Wrong! Press enter to try again."
				end

				Console_Screen.pause

			end

		end

	end


	def play_game

			word = select_word

			Console_Screen.cls

			consonants = get_consonants

			vowel = get_vowel

			shortWord = word.gsub(" ", "")

			prompt_for_gues(shortWord, word, consonants, vowel)

			Console_Screen.cls

	end


	def display_credits

		Console_Screen.cls
		puts "Thank yoiu for playing the game!!"

	end

	Console_Screen = Screen.new

	WordGuess = Game.new

	WordGuess.display_greeting

	answer = ""

	loop do

		Console_Screen.cls

		print "Are you ready to play the Word Guessing game? (y/n): "

		answer = STDIN.gets

		answer.chop!

		break if answer =~ /y|n/i

	end

	if answer == "n"

		Console_Screen.cls
		puts "okay, perahps another time"

	else

		WordGuess.display_instructions

		loop do 

			WordGuess.play_game

			print "Enter Q to quit or press any key to plain again: "

			playAgain = STDIN.gets
			playAgain.chop!

			break if playAgain =~ /Q/i

		end

		WordGuess.display_credits

	end

				
end


