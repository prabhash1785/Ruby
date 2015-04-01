#---------------------------
#
# Script Name: Crazy8Ball.rb
# Version: 1.0
# Author: Prabhash Rathore
# Date: April 1, 2015
#
#---------------------

class Screen

 def cls
   puts ("\n" * 30)
   puts "\a"
 end

 def pause
    STDIN.gets
 end

end

class Ball
  attr_accessor :randomNo, :greeting, :question, :goodbye

  def get_fortune

     random = 1 + rand(6)

     case random
	when 1
   	  $prediction = "yes"
 	when 2
	  $prediction = "no"
	when 3
	  $prediction = "maybe"
	when 4
	  $prediction = "hard to tell. Try again"
	when 5
	  $prediction = "unlikely"
	when 6
	  $prediction = "unknown"
     end
  end

  def say_greeting
     greeting = "\t\t Welcome to the Virtual Crazy 8 Ball Game!" + 
	"\n\n\n\n\n\n\n\n\n Enter to " +
 	"continue. \n\n: "
     print greeting
  end

 def get_question
   question = "Type your question and press the Enter Key. \n\n: "
   print question
 end

def tell_fortune
  print "The answer is " + $prediction + ". \n\n: "
end

def say_goodbye
  godbye = "Thanks for playing the game \n\n"
end 

end


Console_Screen = Screen.new
Eight_Ball = Ball.new

Console_Screen.cls

Eight_Ball.say_greeting

Console_Screen.pause

answer = ""

until answer == "y" || answer == "n"

  Console_Screen.cls

  print "Would you like to have your fortune predicted? (y/n) \n\n: "

  answer = STDIN.gets
  answer.chop!
end

if answer == "n"
  Console_Screen.cls
  puts "Okay, perhaps another time. \n\n"

else
  gameOver = "No"

  until gameOver == "Yes"

    Console_Screen.cls

    Eight_Ball.get_question

    Eight_Ball.get_fortune

    Console_Screen.pause

    Console_Screen.cls

    Eight_Ball.get_fortune
    Eight_Ball.tell_fortune
    
    Console_Screen.pause
    Console_Screen.cls

    print "Press Enter to ask another question or type q to quit. \n\n: "

   answer = STDIN.gets
   answer.chop!

  if answer == "q"
    gameOver = "Yes"
  end

 end

 Eight_Ball.say_goodbye

end

     










