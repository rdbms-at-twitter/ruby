#{"tokyo" => 12345, "kanagawa" => 23456, "Chiba" => 34567}
#{"tokyo": 12345, "kanagawa": 23456, "Chiba": 34567}
#{:tokyo=> 12345, :kanagawa => 23456, :Chiba => 34567}
#{ tokyo: 12345, kanagawa: 23456, Chiba: 34567}
#{1 => 12345, 2 => 23456, 3 => 34567}

#irb(main):001:0> require './hash_key.rb'
#100
#red
#80
#Arial
#blue
#font_size
#100
#color
#blue
#hight
#80
#width
#120
#font_family
#Arial
#=> true
#irb(main):002:0> 

options = { font_size: 100, color: 'red', hight: 80, width: 120}
puts options[:font_size]

puts options[:color]
puts options[:hight]

# New Value
options [:font_family] = 'Arial'
# Overwrite Color
options [:color] = 'blue'
puts options [:font_family]
puts options [:color]



options.each do |key, value|
  puts key
  puts value
end
