class Article


  attr_reader :author, :magazine, :title
  @@all = []

  def initialize(author, magazine, title)
    @author = author
    @magazine = magazine
    @title = title
    @@all << self
  end


  def self.all
    @@all
  end


end

class Author


  attr_reader :name
  def initialize(name)
    @name = name
  end


end

class Magazine


  attr_reader :name
  def initialize(name)
    @name = name
  end

  
end

author = Author.new("Bernard")
magazine = Magazine.new("Archives for Bernard ")
article = Article.new(author, magazine, "lost files")

puts article.author.name
puts article.magazine.name
