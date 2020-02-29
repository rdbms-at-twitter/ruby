# ぼっち演算子　Since ruby2.3~
#irb(main):001:0> require './And.rb'
#=> true
#irb(main):002:0> user = User.new
#=> #<User:0x0000560e94d3a088>
#irb(main):003:0> user.name
#=> "This is Shina"
#irb(main):004:0> object = nil
#=> nil
#irb(main):005:0> object&.name
#=> nil
#irb(main):006:0> object.name
#NoMethodError: undefined method `name' for nil:NilClass
#        from (irb):6
#        from /bin/irb:11:in `<main>'
#irb(main):007:0> 


class User
  def name
    'This is Shina'
  end
end
