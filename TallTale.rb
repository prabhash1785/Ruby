#---------------------------------------
#
# Script Name: TallTale.rb
# Verison: 1.0
# Author: Prabhash Rathore
# Date: April 1, 2015
#
#----------------------------

class Screen
  def cls
    puts("\n" * 25)
    puts "\a"
  end
end

class Tale
  attr_accessor :monster, :villain, :object, :place, :location

  attr_accessor :P1, :P2, :P3, :P4
  def tell_Story(paragraph)
    puts paragraph
  end
end

Console_Screen = Screen.new
Console_Screen.cls

print "Would you like to hear an interesting story? (y/n): \n\n"
answer = STDIN.gets
answer.chomp!

if answer == "y"
  Story = Tale.new
  Console_Screen.cls
  print %Q{Type the name of a scary monster. {Press Enter}\n\n: }
  monster = STDIN.gets
  monster.chomp!

 Console_Screen.cls
 print %Q{Who is your favorite movie star? {Press Enter}\n\n: }
 villain = STDIN.gets
 villain.chomp!

 Console_Screen.cls
 print %Q{Type in the name of a thing. {Press Enter}\n\n: }
 object = STDIN.gets
 object.chomp!

 Console_Screen.cls
 print %Q{Enter the name of a good hiding place.? {Press Enter}\n\n: }
 place = STDIN.gets
 place.chomp!

 Console_Screen.cls
 print %Q{Enter the name of a popular vacation site? {Press Enter}\n\n: }
 location = STDIN.gets
 location.chomp!

 Story.P1 = %Q{ Once upon a time in far way land!!  #{location}..... {Pess Enter} }
  
 Story.P2 = %Q{ Villain  #{villain}..... {Pess Enter} }

 Story.P3 = %Q{ Place --->   #{place}..... {Pess Enter} }

 Story.P4 = " Object ---> #{object} ... {Press Enter} "

 Console_Screen.cls
 Story.tell_Story Story.P1
 STDIN.gets

 Console_Screen.cls
 Story.tell_Story Story.P2
 STDIN.gets

 Console_Screen.cls
 Story.tell_Story Story.P3
 STDIN.gets

 Console_Screen.cls
 Story.tell_Story Story.P4
 STDIN.gets


else
  Console_Screen.cls
  puts "Okay, perhaps another time.\n\n"
end

Console_Screen.cls
puts "Thanks for playing!!\n\n"
