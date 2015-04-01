#---------------------------
#
# Script Name: TypingChallenge.rb
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

class Test

  def display_greeting
    Console_Screen.cls
    print "\t\t Welcome to the Ruby Typing Challenge Game!" + 
       "\n\n\n\n\n\n\n\n\n Press Enter to " + 
  		"continue. \n\n: "

   Console_Screen.pause

  end

  
  def display_instruction

    Console_Screen.cls
    puts "\t\t\t\tInstruction: \n\n"

    puts %Q{This test has 5 typing challenges. Type exactly same as sentences. Your grade will be shown at the end of the test. \n\n\
    	press Enter to continue. \n\n }

    Console_Screen.pause

  end

  def present_test(challenge)
     Console_Screen.cls
     print challenge + "\n\n: "
     result = STDIN.gets
     result.chop!

     if challenge == result then
	
	$noRight += 1
	Console_Screen.cls

        print "Corrcet!\n\n Press Enter to continue."
	Console_Screen.pause
     else
	Console_Screen.cls
        print "Incorrect!\n\n Press Enter to continue."
   	Console_Screen.pause
     end

  end

  def determine_grade
    Console_Screen.cls

    if $noRight >= 3 then
	print "You retyped " + $noRight.to_s + " sentence(s) correctly. "
	puts "You have passed the typing test!\n\n Press Enter to continue."
    else
	print "You retyped " + $noRight.to_s + " sentence(s) correctly. "
	puts "You have failed the typing test!\n\nPress enter to continue."
    end
  end


$noRight = 0

Console_Screen = Screen.new
Typing_Test = Test.new

Typing_Test.display_greeting

Console_Screen.cls

print "Would you like to test your typing skills? (y/n) \n\n: "

answer = STDIN.gets
answer.chop!

until answer =="y" || answer == "n"
  Console_Screen.cls
  print "Would you like to test your typing skills? (y/n) \n\n: "
  answer = STDIN.gets
  answer.chop!
end

if answer == "n"
  Console_Screen.cls
  puts "Okay, perhaps another time.\n\n"

else
  Typing_Test.display_instruction
  Typing_Test.present_test "In the end there can be only one."
  Typing_Test.present_test "hello there."
  Typing_Test.present_test "how are you?"
  Typing_Test.present_test "Chicago is awesome!!"

  Typing_Test.determine_grade
  Console_Screen.pause

  Console_Screen.cls

  puts "Thank you for playing Ruby Typing Challenge game.\n\n"

end

end

