#----------------------------------------------------
#
# Script Name: RubyJoke.rb
# Version: 1.0
# Author Prabhash Rathore
# Date: April 1, 2015
#
# Description: This Ruby script tells a series of 5 humorous jokes.
#
#----------------------------------------------------------

class Screen
  def cls #Define a method hat clears the display area
    puts ("\n" * 25)  # Scroll the screen 25 times
  end
end

Console_Screen = Screen.new
Console_Screen.cls

puts "Would you like to hear a few funny jokes? (y/n)"
answer = STDIN.gets
answer.chop!

if answer == "y"
  Console_Screen.cls
  puts "What is black and white and red all over? (Press Enter)"
  pause = STDIN.gets
  puts "A messy penguin eating cherry pie (Press Enter)"
  pause = STDIN.gets
  
  Console_Screen.cls
  puts "What is black and white and red all over? (Press Enter)"
  pause = STDIN.gets
  puts "A subburned penguin! (Press Enter)"
  pause = STDIN.gets

  Console_Screen.cls
  puts "What is black and white and red all over? (Press Enter)"
  pause = STDIN.gets
  puts "An embarrased Dalmatian puppy! (Press Enter)"
  pause = STDIN.gets
  Console_Screen.cls

  Console_Screen.cls
  puts "What is black and white and red all over? (Press Enter)"
  pause = STDIN.gets
  puts "Abcdes (Press Enter)"
  pause = STDIN.gets

  Console_Screen.cls
  puts "What is black and white and red all over? (Press Enter)"
  pause = STDIN.gets
  puts "xyzerf (Press Enter)"
  pause = STDIN.gets

  Console_Screen.cls
  puts "Thank you for playing the game!!"

else
  Console_Screen.cls
  puts "Sorry to hear that. Please return and play again soon."
end
