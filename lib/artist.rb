class Artist 
 
attr_accessor :name, :song, :artist 

@@all = []


 def initialize(name)
  @songs = []
  
  @name = name 
  
  

 end 


 def add_song(song_name)
    @song_name = song_name
    song = Song.new(song_name)
    @songs << song_name 
    
    
 end 

  def songs 
   @songs 
  end 

  

  def save 
     @@all << self 
  end 

  def self.all 
    @@all 
  end 
 
  def self.find_or_create_by_name(artist_name)
     @@all.each do |song|
      if song.name == artist_name 
        return  song.name 
        end 
      end 

      Artist.new(artist_name)

  end 

  def print_songs 

  @songs.each{|x|puts x.name}
     

  end 

  def self.all=(rev)
   
     @@all = rev 

  end 

end 