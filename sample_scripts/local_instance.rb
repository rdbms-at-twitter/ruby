#irb(main):001:0> require './local_instance.rb'
#=> true
#irb(main):002:0> object = LocalClass.new
#=> #<LocalClass:0x0000000125da90>
#irb(main):003:0> object.local1
#=> 100
#irb(main):004:0> object.local2
#=> 200
#irb(main):005:0> object.local3
#NameError: undefined local variable or method `number' for #<LocalClass:0x0000000125da90>
#        from /home/ec2-user/git/ruby/local_instance.rb:11:in `local3'
#        from (irb):5
#        from /usr/bin/irb:12:in `<main>'
#irb(main):006:0> 


class LocalClass
  def local1
    number = 100
  end

  def local2
    number = 200
  end

  def local3
    number
  end
end
