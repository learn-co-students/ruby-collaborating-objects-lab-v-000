class Artist 
 attr_accessor :name , :songs
 
 @@song_count = 0
 @@all = [] 

 
 def initialize(name)
      @name = name
      @songs = []
 end
 
 def add_song(song)
     @songs << song
 end
 
 def self.all
    @@all 
 end
 
 def save
      @@all << self
 end
 
 def self.find_by_name(name)
   all.find{|artist| artist.name == name}
 end
 
 def self.create_by_name(name)
   new(name).tap {|a| a.save}
 end
 
 def self.find_or_create_by_name(name)
  # found_artist = @@all.find { |artist|
  #   name == artist.name
  #  }
   
  #  if found_artist == nil 
  #     artist = Artist.new(name)
  #     artist
  #  end 
  find_by_name(name) ? find_by_name(name) : create_by_name(name) 
  
 end
 
 def print_songs
   songs.each do |song|
   puts song.name
   end 
  
 end
 
end