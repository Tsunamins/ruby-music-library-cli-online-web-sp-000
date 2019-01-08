class MusicLibraryController 
  attr_accessor :path 
  
  def initialize(path = ".spec/fixtures/mp3s")
    
    MusicImporter.new(path).import  
      
    end 
    
  end 
  
  def call 
  end
  
  
  
  
  
end 
