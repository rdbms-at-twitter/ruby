#irb(main):001:0> require './call_limitation.rb'
#=> true
#irb(main):002:0> person = Person.new(1000000000000)
#=> #<Person:0x0000000166cc30 @money=1000000000000>
#irb(main):003:0> person.millionaire?
#=> true
#irb(main):004:0> person.money
#=> 1000000000000
#irb(main):005:0> person = Person.new(100)
#=> #<Person:0x0000000167c130 @money=100>
#irb(main):006:0> person.millionaire?
#=> false
#irb(main):007:0> person.money
#=> 100
#irb(main):008:0> 


class Person
  def initialize(money)
    @money = money
  end

  # Check if he has money
  def millionaire?
    money >= 1000000
  end

  def money
    @money
  end
end
