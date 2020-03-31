class Song
  @@count = 0
  @@genre = []
  
  attr_accessor :name, :artist, :genre
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    
    @@count += 1
    if !@@genre.include? genre
      @@genre.push(genre)
    end
  end
  
  def self.count
    @@count
  end
  
  def self.genre
    @@genre
  end
end