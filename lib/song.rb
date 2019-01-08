class Song 
  attr_accessor :name 
  @@all = []
  def initialize(name, artist = nil, genre = nil)
    @name = name
    if artist != nil 
      self.artist = artist
    end 
    
    if genre != nil 
      self.genre = genre
    end 
    save
    
    
  end 

  def self.all 

    @@all 
  end 

  def save 
    @@all << self 
  end 

  def self.destroy_all 
    @@all.clear 
  end 

  def self.create(name) 
    self.new(name)
    
  end
  
  def artist 
    @artist 
  end 
  
  def artist=(artist)
    @artist = artist 
    artist.add_song(self)
  end 
  
  def genre
    @genre
  end 

  def genre=(genre)
    @genre = genre
    genre.songs.push self unless genre.songs.include? self
    
  end 
    
    
end