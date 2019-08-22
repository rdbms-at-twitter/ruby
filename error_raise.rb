#irb(main):001:0> require './error_raise.rb'
#This is executed every time
#TypoError: Please check spell
#        from /home/ec2-user/git/ruby/error_raise.rb:5:in `rescue in <top (required)>'
#        from /home/ec2-user/git/ruby/error_raise.rb:8:in `<top (required)>'
#        from /usr/share/rubygems/rubygems/core_ext/kernel_require.rb:55:in `require'
#        from /usr/share/rubygems/rubygems/core_ext/kernel_require.rb:55:in `require'
#        from (irb):1
#        from /usr/bin/irb:12:in `<main>'
#irb(main):002:0> 

begin
  put "This is Error by typo"
rescue
  class TypoError < StandardError; end
  raise TypoError, "Please check spell"
ensure
  puts "This is executed every time"
end



