Ruby Notes
-----------

ruby -v

irb    ---> go into interactive mode from command line

run HelloWorld.rb   ---> run ruby programs

ruby --help

ri ----> Ruby Documentation

Reflectively find all the methods of a class:
<class_name>.instance_methods    	---> this prints all the methods inherited from parent class too
<class_name>.instance_methods(false)   ----> prints only methods whic belongs to this class not derived methods

Reflectively check if a method is present in the obejct
object.respond_to?("method_name")    		---> for eg, object.respond_to?("method")

attr_accessor: Using attr_accessor defines two new methods for us, name to get the value, and name= to set it.

self     -----> prints your current object name

Ruby Objects: In Ruby, everything is object.
1.methods    ---> find all the methods on the given object


Debug:
ruby -r debug <file_name>.rb

step
break <line_no>
cont
del   --> delete break point
list    ---> list all break points


Ref:
The Ruby Programming Language - Oreilly
Ruby Koans
Ruby on Rails
Haml/SASS
TDD (Test Driven Design)
  RSpec
  Capybara