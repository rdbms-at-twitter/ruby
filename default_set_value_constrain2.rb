#irb(main):001:0> require './default_set_value_constrain.rb'
#=> true
#irb(main):002:0> user = User.new("Shinya","Sugiyama",10)
#=> #<User:0x000000022899c8 @given_name="Shinya", @family_name="Sugiyama", @age=10>
#irb(main):003:0> user.name
#=> "Shinya Sugiyama"
#irb(main):004:0> 

class User

    attr_accessor :given_name, :family_name, :age
    def initialize(given_name, family_name, age)
        @given_name = given_name
        @family_name = family_name
        @age = age
    end

    #引数の場合は引数を渡す順番は順不同
    def name(full: true, with_age: true)
    n = if full
        "#{given_name} #{family_name}"
        else
         given_name
        end
    n << "(#{age})" if with_age
    n
    end
end

