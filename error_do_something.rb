#$ ruby error_do_something.rb 
#NameError(undefined local variable or method `do_something' for main:Object)が発生しました。処理を続行します。
#$ 

begin
  do_something
#rescue SomeSpecialError => e
rescue => e
  puts "#{e.class}(#{e.message})が発生しました。処理を続行します。"
end
