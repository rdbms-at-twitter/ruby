#irb(main):001:0> require './if_and_variables.rb'
#number is greater than 100
#=> true
#irb(main):002:0> 

number =  1000
message = if number > 100
          "number is greater than 100"
          else
          "number is lower than 100"
          end
puts message
