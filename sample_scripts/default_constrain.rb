#irb(main):001:0> require './default_constrain.rb'
#=> true
#irb(main):002:0> user = User.new("Shinya","Sugiyama",10)
#=> #<User:0x0000000202a4c0 @given_name="Shinya", @family_name="Sugiyama", @age=10>
#irb(main):003:0> user.name(true,true)
#=> "Shinya Sugiyama(10)"
#irb(main):004:0> user.name(true,false)
#=> "Shinya Sugiyama"
#irb(main):005:0> user.name(false,false)
#=> "Shinya"
#irb(main):006:0>


class User

    attr_accessor :given_name, :family_name, :age
    def initialize(given_name, family_name, age)
        @given_name = given_name
        @family_name = family_name
        @age = age
    end

    def name(full, with_age)
    n = if full
        "#{given_name} #{family_name}"
        else
         given_name
        end
    n << "(#{age})" if with_age
    n
    end
end

