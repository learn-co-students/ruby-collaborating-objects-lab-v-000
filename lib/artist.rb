class Artist
  attr_accessor :name, :songs

   @@song_count = 0
   @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    self.find(name) ? self.find(name) : self.create(name)
    #self.name.tap { |artist| artist == name || Artist.new }
  end

  def self.find(name)
    self.all.find {|artist| artist.name == name }
  end


  def self.create(name)
    self.new(name).tap {|artist| artist.save}
  end

  def add_song(song)
    self.songs << song
    song.artist = self
    @@song_count +=1
  end

  def add_song_by_name(name)
    song = Song.new(name)
    self.songs << song
    song.artist = self
    @@song_count +=1
  end

  def songs
    @songs
  end

  def self.song_count
    @@song_count
  end

  def save
    @@all << self
  end

  def print_songs
    songs.each { |song| puts song.name }
  end

end
