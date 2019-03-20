class Artist
  attr_accessor :name,:songs
   @@all=[]

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
  self.songs << song
end

  def save
  @@all << self
  end

def self.all
  @@all
end

  def songs
    @songs
  end

def self.find_or_create_by_name(name)
@@all.find do |artist|
if artist.name == @name
  return artist
else new_artist = Artist.new(name)
return artist
  end
 end
end


def print_songs
  @songs.each do |song|
  puts song.name
 end
end




#def self.find_or_create_by_name(name)
  # self.artist.@@all << name
# end

# def self.find(name)
#   @@all.find each do |artist|
# if artist.song == song
 # return artist
 #end
#end
#end


end
