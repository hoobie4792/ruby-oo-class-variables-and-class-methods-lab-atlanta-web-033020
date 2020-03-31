class Song
  @@count = 0
  @@genre = []
  
  attr_accessor :name, :artist, :genre
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    
    @@count += 1
    @@genre.push(genre)
  end
  
  def self.count
    @@count
  end
  
  def self.genre
    @@genre.uniq
  end
end