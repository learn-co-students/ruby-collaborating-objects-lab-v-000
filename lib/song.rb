  class Song
    attr_accessor :artist, :name
     
    def initialize(name)
      @name = name
    end
    
    def artist_name(artist)
      self.artist.name
    end
    
    def self.new_by_filename
      
    end 
  end