class Artist

  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    self.name = name
    self.songs = []
    self.save
  end

  def save
    Artist.all << self if !Artist.all.include?(self)
  end

  def add_song(song)
    self.songs << song if !songs.include?(song)
  end

  def print_songs
    self.songs.each do |song|
      puts song.name
    end
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    artist = Artist.all.find { |artist| artist.name == name }
    return artist if artist != nil
    Artist.new(name)
  end

end
