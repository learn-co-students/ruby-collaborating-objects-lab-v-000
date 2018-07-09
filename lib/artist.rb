class Artist

attr_accessor :name, :songs

@@all = []

def self.all

  @@all
end

def self.find_or_create_by_name(artist_name)
  artist_found = @@all.find do |artist|
     artist.name == artist_name
   end
   if !!artist_found
     artist_found
   else
    artist = Artist.new(artist_name)
    artist.save
    artist
   end
end

def self.new_by_filename(file_name)
  new_array = file_name.split(" - ")
  artist_name = new_array[0]
  Artist.find_or_create_by_name(artist_name)
end


  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
  end

  def print_songs
     @songs.each do |song|
       puts song.name
     end
  end





end
