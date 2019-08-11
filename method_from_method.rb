#irb(main):001:0> require './method_from_method.rb'
#=> true
#irb(main):002:0> user = User.new
#=> #<User:0x00000001415978>
#irb(main):003:0> user.name = "Shinya"
#=> "Shinya"
#irb(main):004:0> user.address = "Tokyo"
#=> "Tokyo"
#irb(main):005:0> user.email = "test@variable.jp"
#=> "test@variable.jp"
#irb(main):006:0> user.profile
#=> "Shinya(Tokyo)"
#### 埋め込みにシングルクオートは利用できません ###

class User
  attr_accessor :name,  :address, :email

  def profile
  "#{name}(#{address})"
  end
end
