class Artist 
  attr_accessor :name, :songs
 @@song_count = 0
 @@all = []

  def initialize(name)
    @name = name
    @songs = [] 
  end

  def add_song(song)
    @songs << song
    song.artist = self
    @@song_count = @@song_count + 1 
  end


  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    song.artist = self
    @@song_count = @@song_count + 1
  end

 def self.song_count
   @@song_count
 end

def save
    @@all << self
end

 def self.all
  @@all
end

def self.find(name)
  self.all.find {|artist| artist.name == name }
end

def self.create(name)
    self.new(name).tap {|artist| artist.save}
  end

def self.find_or_create_by_name(name)
    self.find(name) ? self.find(name) : self.create(name)
end


#basically we want to iterate over all the artist 
#and check to see if each artist.name is equal to the name being passed in

def print_songs
  songs.each do |song|
    print song.name + "\n"
end 
end



end
