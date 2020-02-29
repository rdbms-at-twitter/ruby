class BaseTask
  def puts_message
   puts 'This is Parents'
  end
end

class Task < BaseTask
  def puts_message
   super #call super class
   puts 'This is sub'
  end
end

# Overwrite
task = Task.new
puts task.puts_message

