#---------
# name: BlackJack.rb
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
		puts "Welcome to play Black Jack game\n\n"
	end

	def display_instruction

		Console_Screen.cls

		puts "Instruction\n\n"

		puts "This game is based on the Black Jack card game where the objective is to beat the dealet by acquring cards that total higher thann the dealers total without " +
		" without going over 21."

		puts "\n\n\n\n\n"

		puts "Press enter to continue."
		Console_Screen.pause

	end

	def play_game

		Console_Screen.cls

		playerHand = get_new_card
		dealerHand = get_new_card

		playerHand = complete_player_hand(playerHand, dealerHand)

		if playerHand.to_i <= 21 then
			dealerHand = play_dealer_hand(dealerHand)
		end

		determine_winner(playerHand, dealerHand)

	end

	def get_new_card

		card = 1 + rand(13)

		return 11 if card == 1 # value of 1 is ace so reassign 11

		return 1 if card >= 10 # value of 10 or more is face card so reassign 10

		return card
	end

	def complete_player_hand(playerHand, dealerHand)

		loop do

			Console_Screen.cls

			puts "Players hand: " + playerHand.to_s + "\n\n"

			puts "Dealers hand: " + dealerHand.to_s + "\n\n\n\n\n\n\n"

			print "Would you like another card? (y/n) "

			reply = STDIN.gets
			reply.chop!

			if reply =~ /y/i then
				playerHand = playerHand + get_new_card
			end

			if reply =~ /n/i then
				break
			end

			if playerHand > 21 then
				break
			end
		end

		return playerHand

	end


	def play_dealer_hand(dealerHand)

		loop do

			if dealerHand < 17 then

				dealerHand = dealerHand + get_new_card
			else
				break
			end

		end

		return dealerHand

	end


	def determine_winner(playerHand, dealerHand)

		Console_Screen.cls

		puts "Players hand: " + playerHand.to_s + "\n\n"
		puts "Dealers hand: " + dealerHand.to_s + "\n\n\n\n\n\n\n"

		if playerHand.to_i > 21 then

			puts "You have gone bust!\n\n"
			print "Press enter to continue."
		else
			if playerHand == dealerHand then
				puts "Tie!\n\n"
				print "Press enter to continue."
			end

			if dealerHand > 21 then

				puts "The dealer has gone bust!!\n\n"
				print "Press enter to continue."
			else
				if playerHand.to_i > dealerHand then
					puts "You have won!\n\n"
					print "Press enter to continue."
				end

				if playerHand.to_i < dealerHand then
					puts "The dealer has won!\n\n"
					print "Press enter to continue."
				end
			end
		end

		Console_Screen.pause

	end



	def display_credits

		puts "Thank you for playing the game!\n\n"


	end


	Console_Screen = Screen.new

	BJ = Game.new

	BJ.display_greeting

	answer = ""

	loop do

		Console_Screen.cls

		print "Are you ready to play Ruby BlackJack? (y/n): " 

		answer = STDIN.gets
		answer.chop!

		break if answer =~ /y|n/i

	end

	if answer =~ /n/i then

		Console_Screen.cls

		puts "Okay, perhaps another time!!\n\n"

	else

		BJ.display_instruction

		playAgain = ""

		loop do 

			BJ.play_game

			loop do

				Console_Screen.cls

				playAgain = STDIN.gets
				playAgain.chop!

				break if playAgain =~ /n|y/i

			end

			break if playAgain =~ /n/i


		end

		BJ.display_credits


	end

end



			









