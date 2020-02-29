#irb(main):001:0> require './after_acessor_isogs.rb'
#=> true
#irb(main):002:0> user = User.new
#=> #<User:0x00000002779d20>
#irb(main):003:0> user.name = "Shinya"
#=> "Shinya"
#irb(main):004:0> user.address = "Tokyo"
#=> "Tokyo"
#irb(main):005:0> user.email = "test@variable.jp"
#=> "test@variable.jp"

class User
  attr_accessor :name,  :address, :email
end
