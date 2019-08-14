#irb(main):001:0> require './array_and_add_data.rb'
#A
#B
#C
#===========
#A
#B
#C
#D
#=> true
#irb(main):002:0>

a = ['A','B','C']
a.each do | element |
  puts element

end

puts '==========='
a << 'D'
a.each do | element |
  puts element
end
