#irb(main):001:0> require './Doc_Include.rb'
#=> true
#irb(main):002:0> pochi = Dog.new
#=> #<Dog:0x0000000102db30>
#irb(main):003:0> pochi.chat
#=> "Hello World!!"
#irb(main):004:0> 

require './common_module.rb'

class Dog
 include Chatting
end
