class Song 
  attr_accessor :name, :artist
  def initialize(name)
    @name=name
  end 
  def self.new_by_filename(name)
    x = name.split(' - ')
    s = Song.new(x[1])
    
    
    #s.artist= s.artist_name=(x[0])
    
    s.artist= Artist.find_or_create_by_name(x[0])
    s.artist.add_song(s)
    
    s
  end
  #def artist_name=(name)
    #a=Artist.find_or_create_by_name(name)
    #self.artist.add_song(s)
  #end
end