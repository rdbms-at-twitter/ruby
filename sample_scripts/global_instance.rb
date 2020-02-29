#irb(main):001:0> require './global_instance.rb'
#=> true
#irb(main):002:0> object = InstanceClass.new
#=> #<InstanceClass:0x00000001ae1748>
#irb(main):003:0> object.i1
#=> 100
#irb(main):004:0> object.i2
#=> 200
#irb(main):005:0> object.i3
#=> 200
#irb(main):006:0> object.i1
#=> 100
#irb(main):007:0> object.i3
#=> 100


class InstanceClass
  def i1
    @number = 100
  end

  def i2
    @number = 200
  end

  def i3
    @number
  end
end
