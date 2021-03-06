class Song
  @@count = 0
  @@genres = []
  @@artists = []
  
  attr_accessor :name, :artist, :genre
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    
    @@count += 1
    @@genres.push(genre)
    @@artists.push(artist)
  end
  
  def self.count
    @@count
  end
  
  def self.genres
    @@genres.uniq
  end
  
  def self.artists
    @@artists.uniq
  end
  
  def self.genre_count
    hash = {}
    @@genres.each do |genre|
      if !hash[genre]
        hash[genre] = 0
      end
      hash[genre] += 1
    end
    hash
  end
  
  def self.artist_count
    hash = {}
    @@artists.each do |artist|
      if !hash[artist]
        hash[artist] = 0
      end
      hash[artist] += 1
    end
    hash
  end
end