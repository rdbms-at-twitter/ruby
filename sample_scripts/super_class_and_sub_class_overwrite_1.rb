class Book
  def title
    puts 'This is Parents'
  end
end

class Magazine < Book
  def title
     super #call super class
    puts 'This is sub'
  end
end

# Overwrite
magazine = Magazine.new
puts magazine.title

