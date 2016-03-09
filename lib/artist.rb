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

  def self.find_or_create_by_name(name)
    self.all.find(name) do |artist|
      if artist.name == name
          return name
      else
        name = self.new(name)
      end
    end
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