class Artist
  attr_accessor :name, :songs
  @@all = []

  def self.find_or_create_by_name(name)
    self.find_by_name(name) || self.create_by_name(name)
  end

  def self.find_by_name(name)
    self.all.detect {|a| a.name == name}
  end

  def self.create_by_name(name)
    Artist.new(name)
  end

  def print_songs
    self.songs.each do |song|
      puts song.name
    end
  end

  def initialize(name)
    @name = name
    @songs = []
    self.save
  end

  def save
    @@all << self
  end

  def add_song(song)
        @songs << song
       song.artist = self
  end

  def self.all
    @@all
  end

   def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    @@song_count += 1
    song.artist = self
  end

  def self.song_count
    @@song_count
  end
end
