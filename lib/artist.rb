class Artist
  attr_accessor :name, :songs, :song_names

  @@all_artist_names = []
  @@all = []

  def self.all_names
    @@all_artist_names
  end

  def initialize(name)
    @name = name
    @songs = []
    @song_names = []
    @@all_artist_names << name
    @@all = []
  end

  def add_song(song)
    @songs << song
    @song_names << song.name
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    if self.all_names.include?(name)
      puts "#{name} is an artist"
    else
      new_artist = Artist.new(name)
    end
  end

  def print_songs
    self.song_names.join("\n")
  end

end
