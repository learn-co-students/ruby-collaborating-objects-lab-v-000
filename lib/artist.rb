class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    self.name = name
    self.songs = []
    self.save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    result = @@all.find{ |artist| artist.name == name }

    if result
      return result
    else
      artist = self.new(name)
      return artist
    end
  end

  def print_songs
    self.songs.each{ |song| puts song.name }
  end

  def add_song(song)
    self.songs << song
  end
end
