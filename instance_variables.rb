#irb(main):001:0> require './user2.rb'
#=> true
#irb(main):002:0> user = User.new
#=> #<User:0x000000027feb60>
#irb(main):003:0> user.name = "Shinya"
#=> "Shinya"
#irb(main):004:0> user
#=> #<User:0x000000027feb60 @name="Shinya">
#irb(main):005:0> user.name
#=> "Shinya"
#irb(main):006:0> 


class User
  def name=(name)
   @name = name
  end

  def name
   @name
  end
end
