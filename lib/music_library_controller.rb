class MusicLibraryController 
  attr_accessor :path 
  
  def initialize(path = ".db/mp3s")
    
    MusicImporter.new(path).import  
      
    end 
    
  end 
  
  def call 
  end
  
  
  
  
  
end 
