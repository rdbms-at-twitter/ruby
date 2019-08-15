#irb(main):001:0> require './call_private_limitation.rb'
#=> true
#irb(main):002:0> person = Person.new(1000000000000)
#=> #<Person:0x0000000144ff38 @money=1000000000000>
#irb(main):003:0> person.millionaire?
#=> true
#irb(main):004:0> person.money
#NoMethodError: private method `money' called for #<Person:0x0000000144ff38 @money=1000000000000>
#        from (irb):4
#        from /usr/bin/irb:12:in `<main>'
#irb(main):005:0> person = Person.new(100)
#=> #<Person:0x0000000145e560 @money=100>
#irb(main):006:0> person.millionaire?
#=> false
#irb(main):007:0>

class Person
  def initialize(money)
    @money = money
  end

  # Check if he has money
  def millionaire?
    money >= 1000000
  end

  #make money method to private
  # It is callable object internally but outside.
  private

  def money
    @money
  end
end
