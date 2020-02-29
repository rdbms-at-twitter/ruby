class Book
  def title
    'This is Parents'
  end
end

class Magazine < Book
  def title
    'This is sub'
  end
end

# Overwrite
magazine = Magazine.new
puts magazine.title

