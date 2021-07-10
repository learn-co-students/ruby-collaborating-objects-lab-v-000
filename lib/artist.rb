class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    self.name = name
    self.songs = []
  end

  def self.find_or_create_by_name(name)
    find = @@all.detect { |artist| artist.name == name }
    if find
      find
    else
      new_art = Artist.new(name)
      new_art.save
      new_art
    end
  end

  def add_song(song)
    self.songs << song
  end

  def save
    @@all << self
  end

  def print_songs
    self.songs.each { |song| puts "#{song.name}" }
  end

  def self.all
    @@all
  end

end
