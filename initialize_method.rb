#irb(main):001:0> require './initialize_method.rb'
#=> true
#irb(main):002:0> user = User.new("Shinya", "Tokyo Japan", "test@helloworld.com")
#=> #<User:0x000000024c0480 @name="Shinya", @address="Tokyo Japan", @email="test@helloworld.com">
#irb(main):003:0> user.name
#=> "Shinya"
#irb(main):004:0> user.address
#=> "Tokyo Japan"
#irb(main):005:0> user.email
#=> "test@helloworld.com"
#irb(main):006:0> 


class User
  attr_reader :name, :address, :email
  def initialize(name, address, email)
    @name = name
    @address = address
    @email = email
  end
end
