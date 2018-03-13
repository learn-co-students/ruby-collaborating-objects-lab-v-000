class Artist
  @@all = []

  attr_accessor :name, :songs

  def self.all
    @@all
  end

  def initialize(name)
    self.name = name
    self.songs = []
  end

  def add_song(song)
    self.songs << song
  end

  def save
    @@all << self
  end

  def self.find(name)
    self.all.find do |artist|
      artist.name == name
    end
  end

  def self.find_or_create_by_name(name)
    if self.find(name)
      self
    else
      new_artist = Artist.new(name)
      new_artist.save
      new_artist
    end
  end

  def print_songs
    self.songs.each {|song| puts song.name}
  end

end
