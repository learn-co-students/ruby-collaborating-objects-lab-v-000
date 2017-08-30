class Artist

  attr_accessor :name
  attr_reader :songs

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @songs = []
    self.save
  end

  def songs
    @songs
  end

  def song_names
    @songs.map { |e| e.name }
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    array_of_artist_names = @@all.map { |e| e.name }
    if array_of_artist_names.include?(name)
      name_of_artist = array_of_artist_names.find {|e| e == name}
      @@all[array_of_artist_names.index(name_of_artist)]
    else
      Artist.new(name)
    end
  end

  def print_songs
    puts self.song_names
  end

  def add_song(song)
    @songs << song
  end
end
