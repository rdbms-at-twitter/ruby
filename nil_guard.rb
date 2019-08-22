#irb(main):001:0> number ||= 10
#=> 10
#irb(main):002:0> number || (number = 10)
#=> 10
#irb(main):003:0> 

#irb(main):001:0> require './nil_guard.rb'
#=> true
#irb(main):002:0> childnum = Children.new
#=> #<Children:0x00000001f2e4e0>
#irb(main):003:0> childnum.children
#=> []
#irb(main):004:0> @children = 10
#=> 10
#irb(main):005:0> @children = 100
#=> 100
#irb(main):006:0> @children = 10,100,1000
#=> [10, 100, 1000]
#irb(main):007:0> 


class Children
  def children
    @children ||= []
  end
end
