# ClassからモジュールをIncludeして利用
#irb(main):001:0> require './Human_Include_modules.rb'
#=> true
#irb(main):002:0> morning = HumanMorning.new
#=> #<HumanMorning:0x0000000225b910>
#irb(main):003:0> morning.morning
#=> "Good Morning!!"
#irb(main):004:0> noon = HumanNoon.new
#=> #<HumanNoon:0x00000002261ef0>
#irb(main):005:0> noon.noon
#=> "Good Afternoon!!"
#irb(main):006:0> night = HumanNight.new
#=> #<HumanNight:0x000000022686b0>
#irb(main):007:0> night.night
#=> "Good Night!!"
#irb(main):008:0> 


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
