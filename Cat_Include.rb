#irb(main):001:0> require './Cat_Include.rb'
#=> true
#irb(main):002:0> Me = Cat.new
#=> #<Cat:0x000000015ad808>
#irb(main):003:0> Me.chat
#=> "Hello World!!"
#irb(main):004:0> MySelf = Human.new
#=> #<Human:0x000000015b4270>
#irb(main):005:0> MySelf.chat
#=> "Hello World!!"
#irb(main):006:0> 


require './common_module.rb'

class Cat
  include Chatting
end

class Human
  include Chatting
end
