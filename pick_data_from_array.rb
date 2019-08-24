class User
  attr_accessor :name
end

puts "########## basic ################"
user1 = User.new
user1.name = 'First Last1'

user2 = User.new
user2.name = 'Fiest Last2'

user3 = User.new
user3.name = 'First Last3'

user4 = User.new
user4.name = 'First Last4'

users = [user1, user2, user3, user4]

p users

puts "########### each << ###############"

names = []
users.each do |user|
  names << user.name
end

p names

puts "###### map method with do end ########"

names_map_1 = users.map do |user|
  user.name
end
p names_map_1

puts "######### map method with {} #########"

names_map_2 = users.map { |user| user.name }
p names_map_2


puts "###### simplest with & and symbol ####"

names_and = users.map(&:name)
p names_and

