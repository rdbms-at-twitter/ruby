#irb(main):001:0> require './if_elseif_else.rb'
#Number is 100
#=> true
#irb(main):002:0>

number = 100
 if number == 100
   puts 'Number is 100'
 elsif number == 101
   puts 'Number is not 100. It is 101' 
 else
   puts 'Number is not 100 nor 101'
end
