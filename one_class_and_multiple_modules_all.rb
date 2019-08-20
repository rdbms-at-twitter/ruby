# Call Multiple Modules from Single Class.

#irb(main):001:0> require './one_class_and_multiple_modules_all.rb'
#=> true
#irb(main):002:0> Shinya = Human.new
#=> #<Human:0x00000000fc7ab0>
#irb(main):003:0> Shinya.morning
#=> "Good Morning!!"
#irb(main):004:0> Shinya.night
#=> "Good Night!!"
#irb(main):005:0> Shinya.noon
#=> "Good Afternoon!!"
#irb(main):006:0> 


#Morning
module GoodMorning
  def morning
    "Good Morning!!"
  end
end

#Noon
module GoodAfterNoon
  def noon
    "Good Afternoon!!"
  end
end

#Night
module GoodNight
  def night
    "Good Night!!"
  end
end

class Human
  include GoodMorning
  include GoodAfterNoon
  include GoodNight
end
