class Artist
  attr_accessor :name, :artist, :all, :save
    @@all = []

  def initialize(name)
     @name = name
     @songs = []
  end

  def add_song(song)
    song.artist = self
    #song = Song.new(song)
    @songs << song
   # @@all << artist
  end
# self.all.detect {|artist| artist.name == name} or self.new_artist(name)

  def self.find_or_create_by_name(name)
    if self.find(name)
        self.find(name)
     else
        self.create(name)
     end
  end

def self.find(name)
    self.all.find do |artist|
        artist.name == name
    end
end

def self.create(name)
    name = self.new
end

  def self.all
    @@all
  end

  def self.save
      @@all << self
  end

  def print_songs
   songs.each do |song|
     puts song.name
   end

  end


end