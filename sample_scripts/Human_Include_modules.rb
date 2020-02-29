require './one_class_and_multiple_modules.rb'

class HumanMorning
  include GoodMorning
end

class HumanNoon
  include GoodAfterNoon
end

class HumanNight
  include GoodNight
end
